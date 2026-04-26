import { ref, onMounted, watch } from 'vue';

export function useDarkMode() {
    const isDark = ref(false);

    const toggleDark = () => {
        isDark.value = !isDark.value;
        if (isDark.value) {
            document.documentElement.classList.add('dark');
            localStorage.theme = 'dark';
        } else {
            document.documentElement.classList.remove('dark');
            localStorage.theme = 'light';
        }
    };

    onMounted(() => {
        // Initialize state based on current class on <html>
        isDark.value = document.documentElement.classList.contains('dark');
    });

    return {
        isDark,
        toggleDark
    };
}