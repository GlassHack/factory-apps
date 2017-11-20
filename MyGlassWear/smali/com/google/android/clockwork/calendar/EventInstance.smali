.class public Lcom/google/android/clockwork/calendar/EventInstance;
.super Ljava/lang/Object;
.source "EventInstance.java"


# static fields
.field private static final ALL_DAY:Ljava/lang/String; = "all_day"

.field private static final ATTENDEES:Ljava/lang/String; = "attendees"

.field private static final BEGIN:Ljava/lang/String; = "begin"

.field private static final CAL_COLOR:Ljava/lang/String; = "cal_color"

.field private static final DATA_ITEM_NAME:Ljava/lang/String; = "dataItem_name"

.field private static final DESCRIPTION:Ljava/lang/String; = "description"

.field private static final END:Ljava/lang/String; = "end"

.field private static final EVENT_COLOR:Ljava/lang/String; = "event_color"

.field private static final EVENT_ID:Ljava/lang/String; = "event_id"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final LOCATION:Ljava/lang/String; = "location"

.field private static final OWNER_ACCOUNT:Ljava/lang/String; = "owner_account"

.field private static final OWNER_PROFILE_ASSET:Ljava/lang/String; = "owner_profile_asset"

.field private static final REMINDERS:Ljava/lang/String; = "reminders"

.field private static final STATUS:Ljava/lang/String; = "status"

.field public static final STATUS_ACTIVE:I = 0x0

.field public static final STATUS_DISMISSED:I = 0x1

.field private static final TITLE:Ljava/lang/String; = "title"


# instance fields
.field public allDay:Z

.field public attendees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/clockwork/calendar/Attendee;",
            ">;"
        }
    .end annotation
.end field

.field public begin:J

.field public calColor:I

.field public dataItemName:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public end:J

.field public eventColor:I

.field public eventId:J

.field public id:J

.field public location:Ljava/lang/String;

.field public locationMapAsset:Lcom/google/android/gms/wearable/Asset;

.field public ownerAccount:Ljava/lang/String;

.field public ownerProfileAsset:Lcom/google/android/gms/wearable/Asset;

.field public reminders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/clockwork/calendar/Reminder;",
            ">;"
        }
    .end annotation
.end field

.field public status:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/clockwork/calendar/EventInstance;->status:I

    return-void
.end method

.method public static setStatus(Lcom/google/android/gms/wearable/DataMap;I)V
    .locals 1
    .param p0, "dataMap"    # Lcom/google/android/gms/wearable/DataMap;
    .param p1, "status"    # I

    .prologue
    .line 133
    const-string v0, "status"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/wearable/DataMap;->putInt(Ljava/lang/String;I)V

    .line 134
    return-void
.end method


# virtual methods
.method public readFromDataMap(Lcom/google/android/gms/wearable/DataMap;)Lcom/google/android/clockwork/calendar/EventInstance;
    .locals 8
    .param p1, "dataMap"    # Lcom/google/android/gms/wearable/DataMap;

    .prologue
    const/4 v7, 0x0

    .line 90
    const-string v5, "dataItem_name"

    invoke-virtual {p1, v5}, Lcom/google/android/gms/wearable/DataMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/clockwork/calendar/EventInstance;->dataItemName:Ljava/lang/String;

    .line 91
    const-string v5, "id"

    invoke-virtual {p1, v5}, Lcom/google/android/gms/wearable/DataMap;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/clockwork/calendar/EventInstance;->id:J

    .line 92
    const-string v5, "event_id"

    invoke-virtual {p1, v5}, Lcom/google/android/gms/wearable/DataMap;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/clockwork/calendar/EventInstance;->eventId:J

    .line 93
    const-string v5, "title"

    invoke-virtual {p1, v5}, Lcom/google/android/gms/wearable/DataMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/clockwork/calendar/EventInstance;->title:Ljava/lang/String;

    .line 94
    const-string v5, "begin"

    invoke-virtual {p1, v5}, Lcom/google/android/gms/wearable/DataMap;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/clockwork/calendar/EventInstance;->begin:J

    .line 95
    const-string v5, "end"

    invoke-virtual {p1, v5}, Lcom/google/android/gms/wearable/DataMap;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/clockwork/calendar/EventInstance;->end:J

    .line 96
    const-string v5, "all_day"

    invoke-virtual {p1, v5}, Lcom/google/android/gms/wearable/DataMap;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/clockwork/calendar/EventInstance;->allDay:Z

    .line 97
    const-string v5, "description"

    invoke-virtual {p1, v5}, Lcom/google/android/gms/wearable/DataMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/clockwork/calendar/EventInstance;->description:Ljava/lang/String;

    .line 98
    iget-object v5, p0, Lcom/google/android/clockwork/calendar/EventInstance;->description:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 99
    iput-object v7, p0, Lcom/google/android/clockwork/calendar/EventInstance;->description:Ljava/lang/String;

    .line 101
    :cond_0
    const-string v5, "location"

    invoke-virtual {p1, v5}, Lcom/google/android/gms/wearable/DataMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/clockwork/calendar/EventInstance;->location:Ljava/lang/String;

    .line 102
    iget-object v5, p0, Lcom/google/android/clockwork/calendar/EventInstance;->location:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 103
    iput-object v7, p0, Lcom/google/android/clockwork/calendar/EventInstance;->location:Ljava/lang/String;

    .line 105
    :cond_1
    const-string v5, "map"

    invoke-virtual {p1, v5}, Lcom/google/android/gms/wearable/DataMap;->getAsset(Ljava/lang/String;)Lcom/google/android/gms/wearable/Asset;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/clockwork/calendar/EventInstance;->locationMapAsset:Lcom/google/android/gms/wearable/Asset;

    .line 106
    const-string v5, "event_color"

    invoke-virtual {p1, v5}, Lcom/google/android/gms/wearable/DataMap;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/google/android/clockwork/calendar/EventInstance;->eventColor:I

    .line 107
    const-string v5, "cal_color"

    invoke-virtual {p1, v5}, Lcom/google/android/gms/wearable/DataMap;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/google/android/clockwork/calendar/EventInstance;->calColor:I

    .line 108
    const-string v5, "status"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Lcom/google/android/gms/wearable/DataMap;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/google/android/clockwork/calendar/EventInstance;->status:I

    .line 109
    const-string v5, "owner_account"

    invoke-virtual {p1, v5}, Lcom/google/android/gms/wearable/DataMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/clockwork/calendar/EventInstance;->ownerAccount:Ljava/lang/String;

    .line 110
    const-string v5, "owner_profile_asset"

    invoke-virtual {p1, v5}, Lcom/google/android/gms/wearable/DataMap;->getAsset(Ljava/lang/String;)Lcom/google/android/gms/wearable/Asset;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/clockwork/calendar/EventInstance;->ownerProfileAsset:Lcom/google/android/gms/wearable/Asset;

    .line 111
    const-string v5, "reminders"

    invoke-virtual {p1, v5}, Lcom/google/android/gms/wearable/DataMap;->getDataMapArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 112
    .local v3, "reminderData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/wearable/DataMap;>;"
    if-eqz v3, :cond_2

    .line 113
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/google/android/clockwork/calendar/EventInstance;->reminders:Ljava/util/List;

    .line 114
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/wearable/DataMap;

    .line 115
    .local v4, "reminderMap":Lcom/google/android/gms/wearable/DataMap;
    iget-object v5, p0, Lcom/google/android/clockwork/calendar/EventInstance;->reminders:Ljava/util/List;

    new-instance v6, Lcom/google/android/clockwork/calendar/Reminder;

    invoke-direct {v6}, Lcom/google/android/clockwork/calendar/Reminder;-><init>()V

    invoke-virtual {v6, v4}, Lcom/google/android/clockwork/calendar/Reminder;->readFromDataMap(Lcom/google/android/gms/wearable/DataMap;)Lcom/google/android/clockwork/calendar/Reminder;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "reminderMap":Lcom/google/android/gms/wearable/DataMap;
    :cond_2
    iput-object v7, p0, Lcom/google/android/clockwork/calendar/EventInstance;->reminders:Ljava/util/List;

    .line 120
    :cond_3
    const-string v5, "attendees"

    invoke-virtual {p1, v5}, Lcom/google/android/gms/wearable/DataMap;->getDataMapArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 121
    .local v0, "attendeeData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/wearable/DataMap;>;"
    if-eqz v0, :cond_4

    .line 122
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/google/android/clockwork/calendar/EventInstance;->attendees:Ljava/util/List;

    .line 123
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/DataMap;

    .line 124
    .local v1, "attendeeMap":Lcom/google/android/gms/wearable/DataMap;
    iget-object v5, p0, Lcom/google/android/clockwork/calendar/EventInstance;->attendees:Ljava/util/List;

    new-instance v6, Lcom/google/android/clockwork/calendar/Attendee;

    invoke-direct {v6}, Lcom/google/android/clockwork/calendar/Attendee;-><init>()V

    invoke-virtual {v6, v1}, Lcom/google/android/clockwork/calendar/Attendee;->readFromDataMap(Lcom/google/android/gms/wearable/DataMap;)Lcom/google/android/clockwork/calendar/Attendee;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 127
    .end local v1    # "attendeeMap":Lcom/google/android/gms/wearable/DataMap;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    iput-object v7, p0, Lcom/google/android/clockwork/calendar/EventInstance;->attendees:Ljava/util/List;

    .line 129
    :cond_5
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 138
    const-string v1, "EventInstance{dataItemName=%s,instanceId=%s,eventId=%s,title=%s,begin=%d,end=%d,eventColor=%d,calColor=%d,allDay=%s,owner=%s,status=%d,ownerProfileAsset=%s,reminders=%s,attendees=%s}"

    const/16 v0, 0xe

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/clockwork/calendar/EventInstance;->dataItemName:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget-wide v3, p0, Lcom/google/android/clockwork/calendar/EventInstance;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-wide v3, p0, Lcom/google/android/clockwork/calendar/EventInstance;->eventId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/google/android/clockwork/calendar/EventInstance;->title:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget-wide v3, p0, Lcom/google/android/clockwork/calendar/EventInstance;->begin:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x5

    iget-wide v3, p0, Lcom/google/android/clockwork/calendar/EventInstance;->end:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x6

    iget v3, p0, Lcom/google/android/clockwork/calendar/EventInstance;->eventColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x7

    iget v3, p0, Lcom/google/android/clockwork/calendar/EventInstance;->calColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x8

    iget-boolean v3, p0, Lcom/google/android/clockwork/calendar/EventInstance;->allDay:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x9

    iget-object v3, p0, Lcom/google/android/clockwork/calendar/EventInstance;->ownerAccount:Ljava/lang/String;

    aput-object v3, v2, v0

    const/16 v0, 0xa

    iget v3, p0, Lcom/google/android/clockwork/calendar/EventInstance;->status:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v3, 0xb

    iget-object v0, p0, Lcom/google/android/clockwork/calendar/EventInstance;->ownerProfileAsset:Lcom/google/android/gms/wearable/Asset;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    aput-object v0, v2, v3

    const/16 v0, 0xc

    iget-object v3, p0, Lcom/google/android/clockwork/calendar/EventInstance;->reminders:Ljava/util/List;

    aput-object v3, v2, v0

    const/16 v0, 0xd

    iget-object v3, p0, Lcom/google/android/clockwork/calendar/EventInstance;->attendees:Ljava/util/List;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/clockwork/calendar/EventInstance;->ownerProfileAsset:Lcom/google/android/gms/wearable/Asset;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/Asset;->getDigest()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToDataMap(Lcom/google/android/gms/wearable/DataMap;)Lcom/google/android/gms/wearable/DataMap;
    .locals 8
    .param p1, "dataMap"    # Lcom/google/android/gms/wearable/DataMap;

    .prologue
    .line 53
    const-string v5, "dataItem_name"

    iget-object v6, p0, Lcom/google/android/clockwork/calendar/EventInstance;->dataItemName:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v5, "id"

    iget-wide v6, p0, Lcom/google/android/clockwork/calendar/EventInstance;->id:J

    invoke-virtual {p1, v5, v6, v7}, Lcom/google/android/gms/wearable/DataMap;->putLong(Ljava/lang/String;J)V

    .line 55
    const-string v5, "event_id"

    iget-wide v6, p0, Lcom/google/android/clockwork/calendar/EventInstance;->eventId:J

    invoke-virtual {p1, v5, v6, v7}, Lcom/google/android/gms/wearable/DataMap;->putLong(Ljava/lang/String;J)V

    .line 56
    const-string v5, "title"

    iget-object v6, p0, Lcom/google/android/clockwork/calendar/EventInstance;->title:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v5, "begin"

    iget-wide v6, p0, Lcom/google/android/clockwork/calendar/EventInstance;->begin:J

    invoke-virtual {p1, v5, v6, v7}, Lcom/google/android/gms/wearable/DataMap;->putLong(Ljava/lang/String;J)V

    .line 58
    const-string v5, "end"

    iget-wide v6, p0, Lcom/google/android/clockwork/calendar/EventInstance;->end:J

    invoke-virtual {p1, v5, v6, v7}, Lcom/google/android/gms/wearable/DataMap;->putLong(Ljava/lang/String;J)V

    .line 59
    const-string v5, "all_day"

    iget-boolean v6, p0, Lcom/google/android/clockwork/calendar/EventInstance;->allDay:Z

    invoke-virtual {p1, v5, v6}, Lcom/google/android/gms/wearable/DataMap;->putBoolean(Ljava/lang/String;Z)V

    .line 60
    const-string v6, "description"

    iget-object v5, p0, Lcom/google/android/clockwork/calendar/EventInstance;->description:Ljava/lang/String;

    if-nez v5, :cond_2

    const-string v5, ""

    :goto_0
    invoke-virtual {p1, v6, v5}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v6, "location"

    iget-object v5, p0, Lcom/google/android/clockwork/calendar/EventInstance;->location:Ljava/lang/String;

    if-nez v5, :cond_3

    const-string v5, ""

    :goto_1
    invoke-virtual {p1, v6, v5}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v5, p0, Lcom/google/android/clockwork/calendar/EventInstance;->locationMapAsset:Lcom/google/android/gms/wearable/Asset;

    if-eqz v5, :cond_0

    .line 63
    const-string v5, "map"

    iget-object v6, p0, Lcom/google/android/clockwork/calendar/EventInstance;->locationMapAsset:Lcom/google/android/gms/wearable/Asset;

    invoke-virtual {p1, v5, v6}, Lcom/google/android/gms/wearable/DataMap;->putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)V

    .line 65
    :cond_0
    const-string v5, "event_color"

    iget v6, p0, Lcom/google/android/clockwork/calendar/EventInstance;->eventColor:I

    invoke-virtual {p1, v5, v6}, Lcom/google/android/gms/wearable/DataMap;->putInt(Ljava/lang/String;I)V

    .line 66
    const-string v5, "cal_color"

    iget v6, p0, Lcom/google/android/clockwork/calendar/EventInstance;->calColor:I

    invoke-virtual {p1, v5, v6}, Lcom/google/android/gms/wearable/DataMap;->putInt(Ljava/lang/String;I)V

    .line 67
    const-string v5, "status"

    iget v6, p0, Lcom/google/android/clockwork/calendar/EventInstance;->status:I

    invoke-virtual {p1, v5, v6}, Lcom/google/android/gms/wearable/DataMap;->putInt(Ljava/lang/String;I)V

    .line 68
    const-string v5, "owner_account"

    iget-object v6, p0, Lcom/google/android/clockwork/calendar/EventInstance;->ownerAccount:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v5, p0, Lcom/google/android/clockwork/calendar/EventInstance;->ownerProfileAsset:Lcom/google/android/gms/wearable/Asset;

    if-eqz v5, :cond_1

    .line 70
    const-string v5, "owner_profile_asset"

    iget-object v6, p0, Lcom/google/android/clockwork/calendar/EventInstance;->ownerProfileAsset:Lcom/google/android/gms/wearable/Asset;

    invoke-virtual {p1, v5, v6}, Lcom/google/android/gms/wearable/DataMap;->putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)V

    .line 72
    :cond_1
    iget-object v5, p0, Lcom/google/android/clockwork/calendar/EventInstance;->reminders:Ljava/util/List;

    if-eqz v5, :cond_5

    .line 73
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/google/android/clockwork/calendar/EventInstance;->reminders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    .local v4, "reminderDataMaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/wearable/DataMap;>;"
    iget-object v5, p0, Lcom/google/android/clockwork/calendar/EventInstance;->reminders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/clockwork/calendar/Reminder;

    .line 75
    .local v3, "reminder":Lcom/google/android/clockwork/calendar/Reminder;
    new-instance v5, Lcom/google/android/gms/wearable/DataMap;

    invoke-direct {v5}, Lcom/google/android/gms/wearable/DataMap;-><init>()V

    invoke-virtual {v3, v5}, Lcom/google/android/clockwork/calendar/Reminder;->writeToDataMap(Lcom/google/android/gms/wearable/DataMap;)Lcom/google/android/gms/wearable/DataMap;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 60
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "reminder":Lcom/google/android/clockwork/calendar/Reminder;
    .end local v4    # "reminderDataMaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/wearable/DataMap;>;"
    :cond_2
    iget-object v5, p0, Lcom/google/android/clockwork/calendar/EventInstance;->description:Ljava/lang/String;

    goto :goto_0

    .line 61
    :cond_3
    iget-object v5, p0, Lcom/google/android/clockwork/calendar/EventInstance;->location:Ljava/lang/String;

    goto :goto_1

    .line 77
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "reminderDataMaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/wearable/DataMap;>;"
    :cond_4
    const-string v5, "reminders"

    invoke-virtual {p1, v5, v4}, Lcom/google/android/gms/wearable/DataMap;->putDataMapArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 79
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "reminderDataMaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/wearable/DataMap;>;"
    :cond_5
    iget-object v5, p0, Lcom/google/android/clockwork/calendar/EventInstance;->attendees:Ljava/util/List;

    if-eqz v5, :cond_7

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/google/android/clockwork/calendar/EventInstance;->attendees:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    .local v1, "attendeeDataMaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/wearable/DataMap;>;"
    iget-object v5, p0, Lcom/google/android/clockwork/calendar/EventInstance;->attendees:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/clockwork/calendar/Attendee;

    .line 82
    .local v0, "attendee":Lcom/google/android/clockwork/calendar/Attendee;
    new-instance v5, Lcom/google/android/gms/wearable/DataMap;

    invoke-direct {v5}, Lcom/google/android/gms/wearable/DataMap;-><init>()V

    invoke-virtual {v0, v5}, Lcom/google/android/clockwork/calendar/Attendee;->writeToDataMap(Lcom/google/android/gms/wearable/DataMap;)Lcom/google/android/gms/wearable/DataMap;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 84
    .end local v0    # "attendee":Lcom/google/android/clockwork/calendar/Attendee;
    :cond_6
    const-string v5, "attendees"

    invoke-virtual {p1, v5, v1}, Lcom/google/android/gms/wearable/DataMap;->putDataMapArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 86
    .end local v1    # "attendeeDataMaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/wearable/DataMap;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_7
    return-object p1
.end method
