.class public Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;
.super Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;
.source "XmlEventsGDataParser.java"


# instance fields
.field private hasSeenReminder:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->hasSeenReminder:Z

    .line 49
    return-void
.end method

.method private handleOriginalEvent(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V
    .locals 6
    .param p1, "eventEntry"    # Lcom/google/wireless/gdata/calendar/data/EventEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 403
    invoke-virtual {p0}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 405
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 406
    .local v0, "eventType":I
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, "name":Ljava/lang/String;
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const-string v3, "originalEvent"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 411
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected <originalEvent>: Actual element: <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 417
    :cond_1
    const-string v3, "href"

    invoke-interface {v2, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setOriginalEventId(Ljava/lang/String;)V

    .line 420
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 421
    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    .line 422
    packed-switch v0, :pswitch_data_0

    .line 439
    :cond_2
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 424
    :pswitch_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 425
    const-string/jumbo v3, "when"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 426
    const-string v3, "startTime"

    invoke-interface {v2, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setOriginalEventStartTime(Ljava/lang/String;)V

    goto :goto_1

    .line 431
    :pswitch_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 432
    const-string v3, "originalEvent"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 441
    :cond_3
    return-void

    .line 422
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleReminder(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V
    .locals 9
    .param p1, "eventEntry"    # Lcom/google/wireless/gdata/calendar/data/EventEntry;

    .prologue
    const/4 v8, 0x0

    .line 361
    invoke-virtual {p0}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 363
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v6, Lcom/google/wireless/gdata/calendar/data/Reminder;

    invoke-direct {v6}, Lcom/google/wireless/gdata/calendar/data/Reminder;-><init>()V

    .line 364
    .local v6, "reminder":Lcom/google/wireless/gdata/calendar/data/Reminder;
    invoke-virtual {p1, v6}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->addReminder(Lcom/google/wireless/gdata/calendar/data/Reminder;)V

    .line 366
    const-string v7, "method"

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, "methodStr":Ljava/lang/String;
    const-string v7, "minutes"

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 370
    .local v4, "minutesStr":Ljava/lang/String;
    const-string v7, "hours"

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "hoursStr":Ljava/lang/String;
    const-string v7, "days"

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "daysStr":Ljava/lang/String;
    invoke-static {v2}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 376
    const-string v7, "alert"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 377
    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/google/wireless/gdata/calendar/data/Reminder;->setMethod(B)V

    .line 385
    :cond_0
    :goto_0
    const/4 v3, -0x1

    .line 386
    .local v3, "minutes":I
    invoke-static {v4}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 387
    invoke-static {v4, v3}, Lcom/google/wireless/gdata/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 394
    :cond_1
    :goto_1
    if-gez v3, :cond_2

    .line 395
    const/4 v3, -0x1

    .line 397
    :cond_2
    invoke-virtual {v6, v3}, Lcom/google/wireless/gdata/calendar/data/Reminder;->setMinutes(I)V

    .line 398
    return-void

    .line 378
    .end local v3    # "minutes":I
    :cond_3
    const-string v7, "email"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 379
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/google/wireless/gdata/calendar/data/Reminder;->setMethod(B)V

    goto :goto_0

    .line 380
    :cond_4
    const-string v7, "sms"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 381
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/google/wireless/gdata/calendar/data/Reminder;->setMethod(B)V

    goto :goto_0

    .line 388
    .restart local v3    # "minutes":I
    :cond_5
    invoke-static {v1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 389
    invoke-static {v1, v3}, Lcom/google/wireless/gdata/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v7

    mul-int/lit8 v3, v7, 0x3c

    goto :goto_1

    .line 390
    :cond_6
    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 391
    invoke-static {v0, v3}, Lcom/google/wireless/gdata/data/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v7

    mul-int/lit16 v3, v7, 0x5a0

    goto :goto_1
.end method

.method private handleWhen(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V
    .locals 12
    .param p1, "eventEntry"    # Lcom/google/wireless/gdata/calendar/data/EventEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 307
    invoke-virtual {p0}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 309
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 310
    .local v1, "eventType":I
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 312
    .local v4, "name":Ljava/lang/String;
    const/4 v9, 0x2

    if-ne v1, v9, :cond_0

    const-string/jumbo v9, "when"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 315
    :cond_0
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Expected <when>: Actual element: <"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 321
    :cond_1
    const-string v9, "startTime"

    invoke-interface {v5, v11, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 323
    .local v6, "startTime":Ljava/lang/String;
    const-string v9, "endTime"

    invoke-interface {v5, v11, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "endTime":Ljava/lang/String;
    new-instance v7, Lcom/google/wireless/gdata/calendar/data/When;

    invoke-direct {v7, v6, v0}, Lcom/google/wireless/gdata/calendar/data/When;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .local v7, "when":Lcom/google/wireless/gdata/calendar/data/When;
    invoke-virtual {p1, v7}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->addWhen(Lcom/google/wireless/gdata/calendar/data/When;)V

    .line 328
    invoke-virtual {p1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getWhens()Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-ne v9, v8, :cond_4

    move v2, v8

    .line 332
    .local v2, "firstWhen":Z
    :goto_0
    if-eqz v2, :cond_2

    iget-boolean v9, p0, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->hasSeenReminder:Z

    if-nez v9, :cond_2

    move v3, v8

    .line 334
    .local v3, "handleReminders":Z
    :cond_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 335
    :goto_1
    if-eq v1, v8, :cond_5

    .line 336
    packed-switch v1, :pswitch_data_0

    .line 356
    :cond_3
    :goto_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1

    .end local v2    # "firstWhen":Z
    .end local v3    # "handleReminders":Z
    :cond_4
    move v2, v3

    .line 328
    goto :goto_0

    .line 338
    .restart local v2    # "firstWhen":Z
    .restart local v3    # "handleReminders":Z
    :pswitch_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 339
    const-string v9, "reminder"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 342
    if-eqz v3, :cond_3

    .line 343
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->handleReminder(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V

    goto :goto_2

    .line 348
    :pswitch_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 349
    const-string/jumbo v9, "when"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 358
    :cond_5
    return-void

    .line 336
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleWho(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V
    .locals 16
    .param p1, "eventEntry"    # Lcom/google/wireless/gdata/calendar/data/EventEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 209
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 210
    .local v2, "eventType":I
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "name":Ljava/lang/String;
    const/4 v13, 0x2

    if-ne v2, v13, :cond_0

    const-string/jumbo v13, "who"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 215
    :cond_0
    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Expected <who>: Actual element: <"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ">"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 221
    :cond_1
    const/4 v13, 0x0

    const-string v14, "email"

    invoke-interface {v4, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "email":Ljava/lang/String;
    const/4 v13, 0x0

    const-string v14, "rel"

    invoke-interface {v4, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 225
    .local v6, "relString":Ljava/lang/String;
    const/4 v13, 0x0

    const-string/jumbo v14, "valueString"

    invoke-interface {v4, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 228
    .local v11, "value":Ljava/lang/String;
    new-instance v12, Lcom/google/wireless/gdata/calendar/data/Who;

    invoke-direct {v12}, Lcom/google/wireless/gdata/calendar/data/Who;-><init>()V

    .line 229
    .local v12, "who":Lcom/google/wireless/gdata/calendar/data/Who;
    invoke-virtual {v12, v1}, Lcom/google/wireless/gdata/calendar/data/Who;->setEmail(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v12, v11}, Lcom/google/wireless/gdata/calendar/data/Who;->setValue(Ljava/lang/String;)V

    .line 231
    const/4 v5, 0x0

    .line 232
    .local v5, "rel":B
    const-string v13, "http://schemas.google.com/g/2005#event.attendee"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 233
    const/4 v5, 0x1

    .line 245
    :goto_0
    invoke-virtual {v12, v5}, Lcom/google/wireless/gdata/calendar/data/Who;->setRelationship(B)V

    .line 247
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->addAttendee(Lcom/google/wireless/gdata/calendar/data/Who;)V

    .line 249
    :goto_1
    const/4 v13, 0x1

    if-eq v2, v13, :cond_11

    .line 250
    packed-switch v2, :pswitch_data_0

    .line 300
    :cond_2
    :goto_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_1

    .line 234
    :cond_3
    const-string v13, "http://schemas.google.com/g/2005#event.organizer"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 235
    const/4 v5, 0x2

    goto :goto_0

    .line 236
    :cond_4
    const-string v13, "http://schemas.google.com/g/2005#event.performer"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 237
    const/4 v5, 0x3

    goto :goto_0

    .line 238
    :cond_5
    const-string v13, "http://schemas.google.com/g/2005#event.speaker"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 239
    const/4 v5, 0x4

    goto :goto_0

    .line 240
    :cond_6
    invoke-static {v6}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 241
    const/4 v5, 0x1

    goto :goto_0

    .line 243
    :cond_7
    new-instance v13, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unexpected rel: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 252
    :pswitch_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 253
    const-string v13, "attendeeStatus"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 254
    const/4 v13, 0x0

    const-string/jumbo v14, "value"

    invoke-interface {v4, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 256
    .local v8, "statusString":Ljava/lang/String;
    const/4 v7, 0x0

    .line 257
    .local v7, "status":B
    const-string v13, "http://schemas.google.com/g/2005#event.accepted"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 259
    const/4 v7, 0x1

    .line 274
    :goto_3
    invoke-virtual {v12, v7}, Lcom/google/wireless/gdata/calendar/data/Who;->setStatus(B)V

    goto :goto_2

    .line 260
    :cond_8
    const-string v13, "http://schemas.google.com/g/2005#event.declined"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 262
    const/4 v7, 0x2

    goto :goto_3

    .line 263
    :cond_9
    const-string v13, "http://schemas.google.com/g/2005#event.invited"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 265
    const/4 v7, 0x3

    goto :goto_3

    .line 266
    :cond_a
    const-string v13, "http://schemas.google.com/g/2005#event.tentative"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 268
    const/4 v7, 0x4

    goto :goto_3

    .line 269
    :cond_b
    invoke-static {v8}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 270
    const/4 v7, 0x4

    goto :goto_3

    .line 272
    :cond_c
    new-instance v13, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unexpected status: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 275
    .end local v7    # "status":B
    .end local v8    # "statusString":Ljava/lang/String;
    :cond_d
    const-string v13, "attendeeType"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 276
    invoke-static {v4}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v10

    .line 277
    .local v10, "typeString":Ljava/lang/String;
    const/4 v9, 0x0

    .line 278
    .local v9, "type":B
    const-string v13, "http://schemas.google.com/g/2005#event.optional"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 279
    const/4 v9, 0x1

    .line 288
    :goto_4
    invoke-virtual {v12, v9}, Lcom/google/wireless/gdata/calendar/data/Who;->setType(B)V

    goto/16 :goto_2

    .line 280
    :cond_e
    const-string v13, "http://schemas.google.com/g/2005#event.required"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 282
    const/4 v9, 0x2

    goto :goto_4

    .line 283
    :cond_f
    invoke-static {v10}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 284
    const/4 v9, 0x2

    goto :goto_4

    .line 286
    :cond_10
    new-instance v13, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unexpected type: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 292
    .end local v9    # "type":B
    .end local v10    # "typeString":Ljava/lang/String;
    :pswitch_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 293
    const-string/jumbo v13, "who"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 302
    :cond_11
    return-void

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected createEntry()Lcom/google/wireless/gdata/data/Entry;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/google/wireless/gdata/calendar/data/EventEntry;

    invoke-direct {v0}, Lcom/google/wireless/gdata/calendar/data/EventEntry;-><init>()V

    return-object v0
.end method

.method protected createFeed()Lcom/google/wireless/gdata/data/Feed;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/google/wireless/gdata/calendar/data/EventsFeed;

    invoke-direct {v0}, Lcom/google/wireless/gdata/calendar/data/EventsFeed;-><init>()V

    return-object v0
.end method

.method protected handleEntry(Lcom/google/wireless/gdata/data/Entry;)V
    .locals 1
    .param p1, "entry"    # Lcom/google/wireless/gdata/data/Entry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->hasSeenReminder:Z

    .line 71
    invoke-super {p0, p1}, Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;->handleEntry(Lcom/google/wireless/gdata/data/Entry;)V

    .line 72
    return-void
.end method

.method protected handleExtraElementInEntry(Lcom/google/wireless/gdata/data/Entry;)V
    .locals 20
    .param p1, "entry"    # Lcom/google/wireless/gdata/data/Entry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 99
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/google/wireless/gdata/calendar/data/EventEntry;

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 100
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "Expected EventEntry!"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_0
    move-object/from16 v3, p1

    .line 102
    check-cast v3, Lcom/google/wireless/gdata/calendar/data/EventEntry;

    .line 107
    .local v3, "eventEntry":Lcom/google/wireless/gdata/calendar/data/EventEntry;
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, "name":Ljava/lang/String;
    const-string v18, "eventStatus"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 109
    const/16 v18, 0x0

    const-string/jumbo v19, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v7, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, "eventStatusStr":Ljava/lang/String;
    const/4 v4, 0x0

    .line 111
    .local v4, "eventStatus":B
    const-string v18, "http://schemas.google.com/g/2005#event.canceled"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 113
    const/4 v4, 0x2

    .line 121
    :cond_1
    :goto_0
    invoke-virtual {v3, v4}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setStatus(B)V

    .line 202
    .end local v4    # "eventStatus":B
    .end local v5    # "eventStatusStr":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 114
    .restart local v4    # "eventStatus":B
    .restart local v5    # "eventStatusStr":Ljava/lang/String;
    :cond_3
    const-string v18, "http://schemas.google.com/g/2005#event.confirmed"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 116
    const/4 v4, 0x1

    goto :goto_0

    .line 117
    :cond_4
    const-string v18, "http://schemas.google.com/g/2005#event.tentative"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 119
    const/4 v4, 0x0

    goto :goto_0

    .line 122
    .end local v4    # "eventStatus":B
    .end local v5    # "eventStatusStr":Ljava/lang/String;
    :cond_5
    const-string v18, "recurrence"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 123
    invoke-static {v7}, Lcom/google/wireless/gdata/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v10

    .line 124
    .local v10, "recurrence":Ljava/lang/String;
    invoke-virtual {v3, v10}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setRecurrence(Ljava/lang/String;)V

    goto :goto_1

    .line 125
    .end local v10    # "recurrence":Ljava/lang/String;
    :cond_6
    const-string v18, "transparency"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 126
    const/16 v18, 0x0

    const-string/jumbo v19, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v7, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 127
    .local v13, "transparencyStr":Ljava/lang/String;
    const/4 v12, 0x0

    .line 128
    .local v12, "transparency":B
    const-string v18, "http://schemas.google.com/g/2005#event.opaque"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 130
    const/4 v12, 0x0

    .line 135
    :cond_7
    :goto_2
    invoke-virtual {v3, v12}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setTransparency(B)V

    goto :goto_1

    .line 131
    :cond_8
    const-string v18, "http://schemas.google.com/g/2005#event.transparent"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 133
    const/4 v12, 0x1

    goto :goto_2

    .line 136
    .end local v12    # "transparency":B
    .end local v13    # "transparencyStr":Ljava/lang/String;
    :cond_9
    const-string/jumbo v18, "visibility"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 137
    const/16 v18, 0x0

    const-string/jumbo v19, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v7, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 138
    .local v16, "visibilityStr":Ljava/lang/String;
    const/4 v15, 0x0

    .line 139
    .local v15, "visibility":B
    const-string v18, "http://schemas.google.com/g/2005#event.confidential"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 141
    const/4 v15, 0x1

    .line 152
    :cond_a
    :goto_3
    invoke-virtual {v3, v15}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setVisibility(B)V

    goto/16 :goto_1

    .line 142
    :cond_b
    const-string v18, "http://schemas.google.com/g/2005#event.default"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 144
    const/4 v15, 0x0

    goto :goto_3

    .line 145
    :cond_c
    const-string v18, "http://schemas.google.com/g/2005#event.private"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 147
    const/4 v15, 0x2

    goto :goto_3

    .line 148
    :cond_d
    const-string v18, "http://schemas.google.com/g/2005#event.public"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 150
    const/4 v15, 0x3

    goto :goto_3

    .line 153
    .end local v15    # "visibility":B
    .end local v16    # "visibilityStr":Ljava/lang/String;
    :cond_e
    const-string/jumbo v18, "who"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 154
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->handleWho(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V

    goto/16 :goto_1

    .line 155
    :cond_f
    const-string v18, "sendEventNotifications"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 157
    const/16 v18, 0x0

    const-string/jumbo v19, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v7, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 158
    .local v14, "value":Ljava/lang/String;
    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setSendEventNotifications(Z)V

    goto/16 :goto_1

    .line 159
    .end local v14    # "value":Ljava/lang/String;
    :cond_10
    const-string v18, "guestsCanModify"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 161
    const/16 v18, 0x0

    const-string/jumbo v19, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v7, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 162
    .restart local v14    # "value":Ljava/lang/String;
    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setGuestsCanModify(Z)V

    goto/16 :goto_1

    .line 163
    .end local v14    # "value":Ljava/lang/String;
    :cond_11
    const-string v18, "guestsCanInviteOthers"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 165
    const/16 v18, 0x0

    const-string/jumbo v19, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v7, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 166
    .restart local v14    # "value":Ljava/lang/String;
    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setGuestsCanInviteOthers(Z)V

    goto/16 :goto_1

    .line 167
    .end local v14    # "value":Ljava/lang/String;
    :cond_12
    const-string v18, "guestsCanSeeGuests"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 169
    const/16 v18, 0x0

    const-string/jumbo v19, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v7, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 170
    .restart local v14    # "value":Ljava/lang/String;
    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setGuestsCanSeeGuests(Z)V

    goto/16 :goto_1

    .line 171
    .end local v14    # "value":Ljava/lang/String;
    :cond_13
    const-string/jumbo v18, "when"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 172
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->handleWhen(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V

    goto/16 :goto_1

    .line 173
    :cond_14
    const-string v18, "reminder"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 174
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->hasSeenReminder:Z

    move/from16 v18, v0

    if-nez v18, :cond_15

    .line 177
    invoke-virtual {v3}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->clearReminders()V

    .line 178
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->hasSeenReminder:Z

    .line 180
    :cond_15
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->handleReminder(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V

    goto/16 :goto_1

    .line 181
    :cond_16
    const-string v18, "originalEvent"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 182
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->handleOriginalEvent(Lcom/google/wireless/gdata/calendar/data/EventEntry;)V

    goto/16 :goto_1

    .line 183
    :cond_17
    const-string/jumbo v18, "where"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    .line 184
    const/16 v18, 0x0

    const-string/jumbo v19, "valueString"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v7, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 186
    .local v17, "where":Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "rel"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v7, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 188
    .local v11, "rel":Ljava/lang/String;
    invoke-static {v11}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_18

    const-string v18, "http://schemas.google.com/g/2005#event"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 190
    :cond_18
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setWhere(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 193
    .end local v11    # "rel":Ljava/lang/String;
    .end local v17    # "where":Ljava/lang/String;
    :cond_19
    const-string v18, "feedLink"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 195
    const/16 v18, 0x0

    const-string v19, "href"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v7, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "commentsUri":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setCommentsUri(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 197
    .end local v2    # "commentsUri":Ljava/lang/String;
    :cond_1a
    const-string v18, "extendedProperty"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 198
    const/16 v18, 0x0

    const-string v19, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v7, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 199
    .local v8, "propertyName":Ljava/lang/String;
    const/16 v18, 0x0

    const-string/jumbo v19, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v7, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 200
    .local v9, "propertyValue":Ljava/lang/String;
    invoke-virtual {v3, v8, v9}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->addExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected handleExtraElementInFeed(Lcom/google/wireless/gdata/data/Feed;)V
    .locals 6
    .param p1, "feed"    # Lcom/google/wireless/gdata/data/Feed;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 77
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    instance-of v4, p1, Lcom/google/wireless/gdata/calendar/data/EventsFeed;

    if-nez v4, :cond_0

    .line 78
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Expected EventsFeed!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    move-object v0, p1

    .line 80
    check-cast v0, Lcom/google/wireless/gdata/calendar/data/EventsFeed;

    .line 81
    .local v0, "eventsFeed":Lcom/google/wireless/gdata/calendar/data/EventsFeed;
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "name":Ljava/lang/String;
    const-string v4, "timezone"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    const/4 v4, 0x0

    const-string/jumbo v5, "value"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "timezone":Ljava/lang/String;
    invoke-static {v3}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 85
    invoke-virtual {v0, v3}, Lcom/google/wireless/gdata/calendar/data/EventsFeed;->setTimezone(Ljava/lang/String;)V

    .line 88
    .end local v3    # "timezone":Ljava/lang/String;
    :cond_1
    return-void
.end method
