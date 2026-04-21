import { usePage } from '@inertiajs/vue3'

export function useTranslation() {
    const page = usePage()

    const t = (key, defaultValue = '') => {
        const translations = page.props.translations || {}
        return translations[key] || defaultValue
    }

    const locale = () => {
        return page.props.locale || 'en'
    }

    return { t, locale }
}
