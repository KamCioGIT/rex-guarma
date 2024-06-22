local Translations = {

    client = {
        lang_1 = 'Purchase Tickets',
        lang_2 = 'How Many',
        lang_3 = 'cost per ticket $',
        lang_4 = 'Heading to Guarma Port',
        lang_5 = 'Your boat is sailing',
        lang_6 = 'Have a great trip ...',
        lang_7 = 'Heading to Saint Denis Port',
        lang_8 = 'Your boat is sailing',
        lang_9 = 'Have a great trip ...',
        lang_10 = 'Boat Ticket Needed!',
    },

    server = {
        lang_1 = 'Ticket Purchased',
        lang_2 = 'Not Enough Cash!',
    },

}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})

-- Lang:t('client.lang_1')
-- Lang:t('server.lang_1')
-- Lang:t('config.lang_1')
