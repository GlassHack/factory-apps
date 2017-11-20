.class public Lcom/google/android/clockwork/stream/LegacyNotificationUtil;
.super Ljava/lang/Object;
.source "LegacyNotificationUtil.java"


# static fields
.field static final EXTRA_GMAIL_ACTIONS:Ljava/lang/String; = "android.support.wearable.actions"

.field static final EXTRA_GMAIL_GROUP_KEY:Ljava/lang/String; = "android.support.wearable.groupKey"

.field static final EXTRA_GMAIL_GROUP_ORDER:Ljava/lang/String; = "android.support.wearable.groupOrder"

.field static final EXTRA_REMOTE_INPUTS:Ljava/lang/String; = "android.support.wearable.remoteInputs"

.field static final GMAIL_GROUP_ORDER_SUMMARY:I = -0x1

.field public static final GMAIL_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.gm"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addRemoteInputResultsToIntentForGmail(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 6
    .param p0, "overlayIntent"    # Landroid/content/Intent;
    .param p1, "results"    # Landroid/os/Bundle;

    .prologue
    .line 139
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 140
    .local v2, "updatedResults":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 141
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 142
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    .line 143
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_1
    const-string v4, "com.google.android.wearable.extras"

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 149
    return-void
.end method

.method public static getGroup(Landroid/app/Notification;)Ljava/lang/String;
    .locals 3
    .param p0, "notif"    # Landroid/app/Notification;

    .prologue
    .line 31
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompat;->getGroup(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "groupKey":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 39
    .end local v1    # "groupKey":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 35
    .restart local v1    # "groupKey":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    .line 36
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 37
    const-string v2, "android.support.wearable.groupKey"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSortKey(Landroid/app/Notification;)Ljava/lang/String;
    .locals 4
    .param p0, "notif"    # Landroid/app/Notification;

    .prologue
    .line 55
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompat;->getSortKey(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "sortKey":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 66
    .end local v2    # "sortKey":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 59
    .restart local v2    # "sortKey":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    .line 60
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v3, "android.support.wearable.groupKey"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 61
    const-string v3, "android.support.wearable.groupOrder"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 62
    .local v1, "gmailGroupOrder":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 63
    invoke-static {v1}, Lcom/google/android/clockwork/stream/LegacyNotificationUtil;->getSortKeyForLegacyOrder(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 66
    .end local v1    # "gmailGroupOrder":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getSortKeyForLegacyOrder(I)Ljava/lang/String;
    .locals 7
    .param p0, "intOrder"    # I

    .prologue
    .line 93
    const-string v0, "%010d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    int-to-long v3, p0

    const-wide/32 v5, -0x80000000

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWearableOptions(Landroid/app/Notification;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 8
    .param p0, "notif"    # Landroid/app/Notification;

    .prologue
    .line 70
    new-instance v6, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct {v6, p0}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>(Landroid/app/Notification;)V

    .line 73
    .local v6, "options":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v1

    .line 74
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 75
    const-string v7, "android.support.wearable.actions"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    .line 76
    .local v4, "legacyActions":[Landroid/os/Parcelable;
    if-eqz v4, :cond_0

    array-length v7, v4

    if-lez v7, :cond_0

    .line 77
    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->clearActions()Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 78
    move-object v0, v4

    .local v0, "arr$":[Landroid/os/Parcelable;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v3, v0, v2

    .line 79
    .local v3, "legacyAction":Landroid/os/Parcelable;
    check-cast v3, Landroid/os/Bundle;

    .end local v3    # "legacyAction":Landroid/os/Parcelable;
    invoke-static {v3}, Lcom/google/android/clockwork/stream/LegacyNotificationUtil;->parseLegacyWearableAction(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "arr$":[Landroid/os/Parcelable;
    .end local v2    # "i$":I
    .end local v4    # "legacyActions":[Landroid/os/Parcelable;
    .end local v5    # "len$":I
    :cond_0
    return-object v6
.end method

.method public static isGroupSummary(Landroid/app/Notification;)Z
    .locals 6
    .param p0, "notif"    # Landroid/app/Notification;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 43
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompat;->isGroupSummary(Landroid/app/Notification;)Z

    move-result v1

    .line 44
    .local v1, "isGroupSummary":Z
    if-eqz v1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v2

    .line 47
    :cond_1
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    .line 48
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    const-string v4, "android.support.wearable.groupKey"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 49
    const-string v4, "android.support.wearable.groupOrder"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v3

    .line 51
    goto :goto_0
.end method

.method public static isLegacyGmailNotification(Ljava/lang/String;Landroid/app/Notification;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    const/4 v1, 0x0

    .line 171
    const-string v2, "com.google.android.gm"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v1

    .line 174
    :cond_1
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    .line 175
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v2, "android.support.wearable.groupOrder"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isLegacyGmailUndoNotification(Ljava/lang/String;Landroid/app/Notification;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    const/4 v1, 0x0

    .line 157
    const-string v2, "com.google.android.gm"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat;->getLocalOnly(Landroid/app/Notification;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    :cond_0
    :goto_0
    return v1

    .line 161
    :cond_1
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    .line 162
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "android.title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "android.text"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static parseLegacyRemoteInputBundle(Landroid/os/Bundle;)Landroid/support/v4/app/RemoteInput;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 129
    new-instance v0, Landroid/support/v4/app/RemoteInput$Builder;

    const-string v1, "return_key"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "label"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;

    move-result-object v0

    const-string v1, "choices"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;

    move-result-object v0

    const-string v1, "allowFreeFormInput"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/support/v4/app/RemoteInput$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/RemoteInput$Builder;->build()Landroid/support/v4/app/RemoteInput;

    move-result-object v0

    return-object v0
.end method

.method private static parseLegacyRemoteInputBundles([Landroid/os/Bundle;)[Landroid/support/v4/app/RemoteInput;
    .locals 3
    .param p0, "bundles"    # [Landroid/os/Bundle;

    .prologue
    .line 118
    if-nez p0, :cond_1

    .line 119
    const/4 v1, 0x0

    .line 125
    :cond_0
    return-object v1

    .line 121
    :cond_1
    array-length v2, p0

    new-array v1, v2, [Landroid/support/v4/app/RemoteInput;

    .line 122
    .local v1, "remoteInputs":[Landroid/support/v4/app/RemoteInput;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 123
    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/google/android/clockwork/stream/LegacyNotificationUtil;->parseLegacyRemoteInputBundle(Landroid/os/Bundle;)Landroid/support/v4/app/RemoteInput;

    move-result-object v2

    aput-object v2, v1, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static parseLegacyWearableAction(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Action;
    .locals 11
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 97
    const-string v10, "icon"

    invoke-virtual {p0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 98
    .local v5, "icon":I
    const-string v10, "title"

    invoke-virtual {p0, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 99
    .local v9, "title":Ljava/lang/CharSequence;
    const-string v10, "action_intent"

    invoke-virtual {p0, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 100
    .local v1, "actionIntent":Landroid/app/PendingIntent;
    const-string v10, "extras"

    invoke-virtual {p0, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 101
    .local v0, "actionExtras":Landroid/os/Bundle;
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    invoke-direct {v3, v5, v9, v1}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 103
    .local v3, "builder":Landroid/support/v4/app/NotificationCompat$Action$Builder;
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Action$Builder;

    .line 105
    const-string v10, "android.support.wearable.remoteInputs"

    invoke-static {v0, v10}, Lcom/google/android/clockwork/stream/BundleUtil;->getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/clockwork/stream/LegacyNotificationUtil;->parseLegacyRemoteInputBundles([Landroid/os/Bundle;)[Landroid/support/v4/app/RemoteInput;

    move-result-object v8

    .line 108
    .local v8, "remoteInputs":[Landroid/support/v4/app/RemoteInput;
    if-eqz v8, :cond_0

    .line 109
    move-object v2, v8

    .local v2, "arr$":[Landroid/support/v4/app/RemoteInput;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v7, v2, v4

    .line 110
    .local v7, "remoteInput":Landroid/support/v4/app/RemoteInput;
    invoke-virtual {v3, v7}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->addRemoteInput(Landroid/support/v4/app/RemoteInput;)Landroid/support/v4/app/NotificationCompat$Action$Builder;

    .line 109
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 114
    .end local v2    # "arr$":[Landroid/support/v4/app/RemoteInput;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "remoteInput":Landroid/support/v4/app/RemoteInput;
    .end local v8    # "remoteInputs":[Landroid/support/v4/app/RemoteInput;
    :cond_0
    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v10

    return-object v10
.end method
