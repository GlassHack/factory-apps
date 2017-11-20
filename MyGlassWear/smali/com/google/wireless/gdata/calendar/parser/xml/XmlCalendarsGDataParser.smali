.class public Lcom/google/wireless/gdata/calendar/parser/xml/XmlCalendarsGDataParser;
.super Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;
.source "XmlCalendarsGDataParser.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected createEntry()Lcom/google/wireless/gdata/data/Entry;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;

    invoke-direct {v0}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;-><init>()V

    return-object v0
.end method

.method protected createFeed()Lcom/google/wireless/gdata/data/Feed;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/google/wireless/gdata/calendar/data/CalendarsFeed;

    invoke-direct {v0}, Lcom/google/wireless/gdata/calendar/data/CalendarsFeed;-><init>()V

    return-object v0
.end method

.method protected handleExtraElementInEntry(Lcom/google/wireless/gdata/data/Entry;)V
    .locals 14
    .param p1, "entry"    # Lcom/google/wireless/gdata/data/Entry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlCalendarsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 58
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    instance-of v12, p1, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;

    if-nez v12, :cond_0

    .line 59
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Expected CalendarEntry!"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_0
    move-object v2, p1

    .line 61
    check-cast v2, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;

    .line 65
    .local v2, "calendarEntry":Lcom/google/wireless/gdata/calendar/data/CalendarEntry;
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, "name":Ljava/lang/String;
    const-string v12, "accesslevel"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 67
    const-string/jumbo v12, "value"

    invoke-interface {v8, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "accesslevelStr":Ljava/lang/String;
    const/4 v0, 0x1

    .line 70
    .local v0, "accesslevel":B
    const-string v12, "none"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 71
    const/4 v0, 0x0

    .line 87
    :cond_1
    :goto_0
    invoke-virtual {v2, v0}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setAccessLevel(B)V

    .line 125
    .end local v0    # "accesslevel":B
    .end local v1    # "accesslevelStr":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 72
    .restart local v0    # "accesslevel":B
    .restart local v1    # "accesslevelStr":Ljava/lang/String;
    :cond_3
    const-string v12, "read"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 73
    const/4 v0, 0x1

    goto :goto_0

    .line 74
    :cond_4
    const-string v12, "freebusy"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 75
    const/4 v0, 0x2

    goto :goto_0

    .line 76
    :cond_5
    const-string v12, "contributor"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 79
    const/4 v0, 0x3

    goto :goto_0

    .line 80
    :cond_6
    const-string v12, "editor"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 81
    const/4 v0, 0x3

    goto :goto_0

    .line 82
    :cond_7
    const-string v12, "owner"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 83
    const/4 v0, 0x4

    goto :goto_0

    .line 84
    :cond_8
    const-string v12, "root"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 85
    const/4 v0, 0x5

    goto :goto_0

    .line 88
    .end local v0    # "accesslevel":B
    .end local v1    # "accesslevelStr":Ljava/lang/String;
    :cond_9
    const-string v12, "color"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 89
    const-string/jumbo v12, "value"

    invoke-interface {v8, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "color":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setColor(Ljava/lang/String;)V

    goto :goto_1

    .line 92
    .end local v3    # "color":Ljava/lang/String;
    :cond_a
    const-string v12, "hidden"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 93
    const-string/jumbo v12, "value"

    invoke-interface {v8, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "hiddenStr":Ljava/lang/String;
    const/4 v4, 0x0

    .line 96
    .local v4, "hidden":Z
    const-string v12, "false"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 97
    const/4 v4, 0x0

    .line 101
    :cond_b
    :goto_2
    invoke-virtual {v2, v4}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setHidden(Z)V

    .line 103
    if-eqz v4, :cond_2

    .line 104
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setSelected(Z)V

    goto :goto_1

    .line 98
    :cond_c
    const-string v12, "true"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 99
    const/4 v4, 0x1

    goto :goto_2

    .line 106
    .end local v4    # "hidden":Z
    .end local v5    # "hiddenStr":Ljava/lang/String;
    :cond_d
    const-string v12, "selected"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 107
    const-string/jumbo v12, "value"

    invoke-interface {v8, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 109
    .local v10, "selectedStr":Ljava/lang/String;
    const/4 v9, 0x0

    .line 110
    .local v9, "selected":Z
    const-string v12, "false"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 111
    const/4 v9, 0x0

    .line 115
    :cond_e
    :goto_3
    invoke-virtual {v2, v9}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setSelected(Z)V

    goto/16 :goto_1

    .line 112
    :cond_f
    const-string v12, "true"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 113
    const/4 v9, 0x1

    goto :goto_3

    .line 116
    .end local v9    # "selected":Z
    .end local v10    # "selectedStr":Ljava/lang/String;
    :cond_10
    const-string v12, "timezone"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 117
    const-string/jumbo v12, "value"

    invoke-interface {v8, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 119
    .local v11, "timezone":Ljava/lang/String;
    invoke-virtual {v2, v11}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setTimezone(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 120
    .end local v11    # "timezone":Ljava/lang/String;
    :cond_11
    const-string v12, "overridename"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 121
    const-string/jumbo v12, "value"

    invoke-interface {v8, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 123
    .local v7, "overrideName":Ljava/lang/String;
    invoke-virtual {v2, v7}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setOverrideName(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected handleExtraLinkInEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;)V
    .locals 2
    .param p1, "rel"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "href"    # Ljava/lang/String;
    .param p4, "entry"    # Lcom/google/wireless/gdata/data/Entry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    const-string v1, "alternate"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "application/atom+xml"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p4

    .line 138
    check-cast v0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;

    .line 139
    .local v0, "calendarEntry":Lcom/google/wireless/gdata/calendar/data/CalendarEntry;
    invoke-virtual {v0, p3}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->setAlternateLink(Ljava/lang/String;)V

    .line 141
    .end local v0    # "calendarEntry":Lcom/google/wireless/gdata/calendar/data/CalendarEntry;
    :cond_0
    return-void
.end method
