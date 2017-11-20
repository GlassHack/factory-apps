.class public Lcom/google/wireless/gdata/calendar/data/EventEntry;
.super Lcom/google/wireless/gdata/data/Entry;
.source "EventEntry.java"


# static fields
.field public static final STATUS_CANCELED:B = 0x2t

.field public static final STATUS_CONFIRMED:B = 0x1t

.field public static final STATUS_TENTATIVE:B = 0x0t

.field public static final TRANSPARENCY_OPAQUE:B = 0x0t

.field public static final TRANSPARENCY_TRANSPARENT:B = 0x1t

.field public static final VISIBILITY_CONFIDENTIAL:B = 0x1t

.field public static final VISIBILITY_DEFAULT:B = 0x0t

.field public static final VISIBILITY_PRIVATE:B = 0x2t

.field public static final VISIBILITY_PUBLIC:B = 0x3t


# instance fields
.field private attendees:Ljava/util/Vector;

.field private commentsUri:Ljava/lang/String;

.field private extendedProperties:Ljava/util/Hashtable;

.field private guestsCanInviteOthers:Z

.field private guestsCanModify:Z

.field private guestsCanSeeGuests:Z

.field private organizer:Ljava/lang/String;

.field private originalEventId:Ljava/lang/String;

.field private originalEventStartTime:Ljava/lang/String;

.field private quickAdd:Z

.field private recurrence:Ljava/lang/String;

.field private reminders:Ljava/util/Vector;

.field private sendEventNotifications:Z

.field private status:B

.field private transparency:B

.field private visibility:B

.field private whens:Ljava/util/Vector;

.field private where:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lcom/google/wireless/gdata/data/Entry;-><init>()V

    .line 68
    iput-byte v2, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->status:B

    .line 69
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    .line 70
    iput-byte v2, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->visibility:B

    .line 71
    iput-byte v2, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->transparency:B

    .line 72
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->attendees:Ljava/util/Vector;

    .line 73
    iput-boolean v2, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->sendEventNotifications:Z

    .line 74
    iput-boolean v2, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->guestsCanModify:Z

    .line 75
    iput-boolean v3, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->guestsCanInviteOthers:Z

    .line 76
    iput-boolean v3, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->guestsCanSeeGuests:Z

    .line 77
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->organizer:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    .line 79
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    .line 80
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->where:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    .line 85
    iput-boolean v2, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->quickAdd:Z

    .line 91
    return-void
.end method


# virtual methods
.method public addAttendee(Lcom/google/wireless/gdata/calendar/data/Who;)V
    .locals 1
    .param p1, "attendee"    # Lcom/google/wireless/gdata/calendar/data/Who;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->attendees:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method public addExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    return-void
.end method

.method public addReminder(Lcom/google/wireless/gdata/calendar/data/Reminder;)V
    .locals 1
    .param p1, "reminder"    # Lcom/google/wireless/gdata/calendar/data/Reminder;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 255
    return-void
.end method

.method public addWhen(Lcom/google/wireless/gdata/calendar/data/When;)V
    .locals 1
    .param p1, "when"    # Lcom/google/wireless/gdata/calendar/data/When;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 233
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-super {p0}, Lcom/google/wireless/gdata/data/Entry;->clear()V

    .line 99
    iput-byte v2, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->status:B

    .line 100
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    .line 101
    iput-byte v2, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->visibility:B

    .line 102
    iput-byte v2, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->transparency:B

    .line 103
    iput-boolean v2, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->sendEventNotifications:Z

    .line 104
    iput-boolean v2, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->guestsCanModify:Z

    .line 105
    iput-boolean v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->guestsCanInviteOthers:Z

    .line 106
    iput-boolean v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->guestsCanSeeGuests:Z

    .line 107
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->organizer:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->attendees:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 109
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 110
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    .line 111
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    .line 112
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    .line 113
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->where:Ljava/lang/String;

    .line 114
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    .line 115
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    .line 116
    iput-boolean v2, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->quickAdd:Z

    .line 117
    return-void
.end method

.method public clearAttendees()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->attendees:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 217
    return-void
.end method

.method public clearExtendedProperties()V
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    .line 315
    return-void
.end method

.method public clearReminders()V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    .line 259
    return-void
.end method

.method public clearWhens()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 229
    return-void
.end method

.method public getAttendees()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->attendees:Ljava/util/Vector;

    return-object v0
.end method

.method public getCommentsUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendedProperties()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getExtendedProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 296
    iget-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    if-nez v1, :cond_1

    .line 297
    const/4 v0, 0x0

    .line 303
    :cond_0
    :goto_0
    return-object v0

    .line 299
    :cond_1
    const/4 v0, 0x0

    .line 300
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "value":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method public getFirstWhen()Lcom/google/wireless/gdata/calendar/data/When;
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    const/4 v0, 0x0

    .line 243
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata/calendar/data/When;

    goto :goto_0
.end method

.method public getGuestsCanInviteOthers()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->guestsCanInviteOthers:Z

    return v0
.end method

.method public getGuestsCanModify()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->guestsCanModify:Z

    return v0
.end method

.method public getGuestsCanSeeGuests()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->guestsCanSeeGuests:Z

    return v0
.end method

.method public getOrganizer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->organizer:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalEventStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRecurrence()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    return-object v0
.end method

.method public getReminders()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    return-object v0
.end method

.method public getSendEventNotifications()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->sendEventNotifications:Z

    return v0
.end method

.method public getStatus()B
    .locals 1

    .prologue
    .line 137
    iget-byte v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->status:B

    return v0
.end method

.method public getTransparency()B
    .locals 1

    .prologue
    .line 151
    iget-byte v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->transparency:B

    return v0
.end method

.method public getVisibility()B
    .locals 1

    .prologue
    .line 165
    iget-byte v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->visibility:B

    return v0
.end method

.method public getWhens()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    return-object v0
.end method

.method public getWhere()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->where:Ljava/lang/String;

    return-object v0
.end method

.method public isQuickAdd()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->quickAdd:Z

    return v0
.end method

.method public setCommentsUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "commentsUri"    # Ljava/lang/String;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    .line 323
    return-void
.end method

.method public setGuestsCanInviteOthers(Z)V
    .locals 0
    .param p1, "guestsCanInviteOthers"    # Z

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->guestsCanInviteOthers:Z

    .line 197
    return-void
.end method

.method public setGuestsCanModify(Z)V
    .locals 0
    .param p1, "guestsCanModify"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->guestsCanModify:Z

    .line 189
    return-void
.end method

.method public setGuestsCanSeeGuests(Z)V
    .locals 0
    .param p1, "guestsCanSeeGuests"    # Z

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->guestsCanSeeGuests:Z

    .line 205
    return-void
.end method

.method public setOrganizer(Ljava/lang/String;)V
    .locals 0
    .param p1, "organizer"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->organizer:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setOriginalEventId(Ljava/lang/String;)V
    .locals 0
    .param p1, "originalEventId"    # Ljava/lang/String;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public setOriginalEventStartTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "originalEventStartTime"    # Ljava/lang/String;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public setQuickAdd(Z)V
    .locals 0
    .param p1, "quickAdd"    # Z

    .prologue
    .line 330
    iput-boolean p1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->quickAdd:Z

    .line 331
    return-void
.end method

.method public setRecurrence(Ljava/lang/String;)V
    .locals 0
    .param p1, "recurrence"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setSendEventNotifications(Z)V
    .locals 0
    .param p1, "sendEventNotifications"    # Z

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->sendEventNotifications:Z

    .line 181
    return-void
.end method

.method public setStatus(B)V
    .locals 0
    .param p1, "status"    # B

    .prologue
    .line 144
    iput-byte p1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->status:B

    .line 145
    return-void
.end method

.method public setTransparency(B)V
    .locals 0
    .param p1, "transparency"    # B

    .prologue
    .line 158
    iput-byte p1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->transparency:B

    .line 159
    return-void
.end method

.method public setVisibility(B)V
    .locals 0
    .param p1, "visibility"    # B

    .prologue
    .line 172
    iput-byte p1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->visibility:B

    .line 173
    return-void
.end method

.method public setWhere(Ljava/lang/String;)V
    .locals 0
    .param p1, "where"    # Ljava/lang/String;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->where:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 11
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 334
    invoke-super {p0, p1}, Lcom/google/wireless/gdata/data/Entry;->toString(Ljava/lang/StringBuffer;)V

    .line 335
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "STATUS: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-byte v10, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->status:B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    const-string v9, "RECURRENCE"

    iget-object v10, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->recurrence:Ljava/lang/String;

    invoke-virtual {p0, p1, v9, v10}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VISIBILITY: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-byte v10, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->visibility:B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TRANSPARENCY: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-byte v10, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->transparency:B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    const-string v9, "ORIGINAL_EVENT_ID"

    iget-object v10, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->originalEventId:Ljava/lang/String;

    invoke-virtual {p0, p1, v9, v10}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v9, "ORIGINAL_START_TIME"

    iget-object v10, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->originalEventStartTime:Ljava/lang/String;

    invoke-virtual {p0, p1, v9, v10}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "QUICK_ADD: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v9, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->quickAdd:Z

    if-eqz v9, :cond_0

    const-string v9, "true"

    :goto_0
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SEND_EVENT_NOTIFICATIONS: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v9, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->sendEventNotifications:Z

    if-eqz v9, :cond_1

    const-string v9, "true"

    :goto_1
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GUESTS_CAN_MODIFY: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v9, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->guestsCanModify:Z

    if-eqz v9, :cond_2

    const-string v9, "true"

    :goto_2
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GUESTS_CAN_INVITE_OTHERS: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v9, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->guestsCanInviteOthers:Z

    if-eqz v9, :cond_3

    const-string v9, "true"

    :goto_3
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 346
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GUESTS_CAN_SEE_GUESTS: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v9, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->guestsCanSeeGuests:Z

    if-eqz v9, :cond_4

    const-string v9, "true"

    :goto_4
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    const-string v9, "ORGANIZER"

    iget-object v10, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->organizer:Ljava/lang/String;

    invoke-virtual {p0, p1, v9, v10}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v9, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->attendees:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v8

    .line 350
    .local v8, "whos":Ljava/util/Enumeration;
    :goto_5
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 351
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/wireless/gdata/calendar/data/Who;

    .line 352
    .local v7, "who":Lcom/google/wireless/gdata/calendar/data/Who;
    invoke-virtual {v7, p1}, Lcom/google/wireless/gdata/calendar/data/Who;->toString(Ljava/lang/StringBuffer;)V

    goto :goto_5

    .line 342
    .end local v7    # "who":Lcom/google/wireless/gdata/calendar/data/Who;
    .end local v8    # "whos":Ljava/util/Enumeration;
    :cond_0
    const-string v9, "false"

    goto/16 :goto_0

    .line 343
    :cond_1
    const-string v9, "false"

    goto/16 :goto_1

    .line 344
    :cond_2
    const-string v9, "false"

    goto :goto_2

    .line 345
    :cond_3
    const-string v9, "false"

    goto :goto_3

    .line 346
    :cond_4
    const-string v9, "false"

    goto :goto_4

    .line 355
    .restart local v8    # "whos":Ljava/util/Enumeration;
    :cond_5
    iget-object v9, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->whens:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    .line 356
    .local v4, "times":Ljava/util/Enumeration;
    :goto_6
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 357
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/wireless/gdata/calendar/data/When;

    .line 358
    .local v6, "when":Lcom/google/wireless/gdata/calendar/data/When;
    invoke-virtual {v6, p1}, Lcom/google/wireless/gdata/calendar/data/When;->toString(Ljava/lang/StringBuffer;)V

    goto :goto_6

    .line 360
    .end local v6    # "when":Lcom/google/wireless/gdata/calendar/data/When;
    :cond_6
    iget-object v9, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    if-eqz v9, :cond_7

    .line 361
    iget-object v9, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->reminders:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 362
    .local v0, "alarms":Ljava/util/Enumeration;
    :goto_7
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 363
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/gdata/calendar/data/Reminder;

    .line 364
    .local v3, "reminder":Lcom/google/wireless/gdata/calendar/data/Reminder;
    invoke-virtual {v3, p1}, Lcom/google/wireless/gdata/calendar/data/Reminder;->toString(Ljava/lang/StringBuffer;)V

    goto :goto_7

    .line 367
    .end local v0    # "alarms":Ljava/util/Enumeration;
    .end local v3    # "reminder":Lcom/google/wireless/gdata/calendar/data/Reminder;
    :cond_7
    const-string v9, "WHERE"

    iget-object v10, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->where:Ljava/lang/String;

    invoke-virtual {p0, p1, v9, v10}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v9, "COMMENTS"

    iget-object v10, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->commentsUri:Ljava/lang/String;

    invoke-virtual {p0, p1, v9, v10}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v9, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    if-eqz v9, :cond_8

    .line 370
    iget-object v9, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 371
    .local v1, "entryNames":Ljava/util/Enumeration;
    :goto_8
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 372
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 373
    .local v2, "name":Ljava/lang/String;
    iget-object v9, p0, Lcom/google/wireless/gdata/calendar/data/EventEntry;->extendedProperties:Ljava/util/Hashtable;

    invoke-virtual {v9, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 374
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    const/16 v9, 0x3a

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 376
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    const/16 v9, 0xa

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 380
    .end local v1    # "entryNames":Ljava/util/Enumeration;
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_8
    return-void
.end method
