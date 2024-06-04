function formatDateTime(dateTimeString) {
    const options = {
        year: 'numeric',
        month: 'short',
        day: '2-digit',
        hour: '2-digit',
        minute: '2-digit'
    }
    const formatedDateTime = new Intl.DateTimeFormat('en-Us', options).format(new Date(dateTimeString));
    return formatedDateTime;
}