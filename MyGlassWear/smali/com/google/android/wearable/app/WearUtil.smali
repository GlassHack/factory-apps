.class public Lcom/google/android/wearable/app/WearUtil;
.super Ljava/lang/Object;
.source "WearUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/wearable/app/WearUtil$ActionInfo;
    }
.end annotation


# static fields
.field private static final WEARABLE_ACTION_MENU_ID_PREFIX:Ljava/lang/String; = "W"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/android/wearable/app/WearUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static dataItemFromTimelineItemId(Landroid/content/Context;Lcom/google/android/wearable/gmsclient/DataManager;Ljava/lang/String;)Lcom/google/android/gms/wearable/DataItem;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dataManager"    # Lcom/google/android/wearable/gmsclient/DataManager;
    .param p2, "timelineItemId"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 71
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v3

    .line 73
    .local v3, "timelineItemDatabaseHelper":Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    invoke-virtual {v3, p2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryTimelineItem(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    .line 74
    .local v2, "timelineItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-nez v2, :cond_1

    .line 75
    sget-object v4, Lcom/google/android/wearable/app/WearUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Timeline item no longer exists [timelineItemId=%s]."

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p2, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    const/4 v0, 0x0

    .line 92
    :cond_0
    :goto_0
    return-object v0

    .line 79
    :cond_1
    const/4 v0, 0x0

    .line 82
    .local v0, "dataItem":Lcom/google/android/gms/wearable/DataItem;
    :try_start_0
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSourceItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/wearable/gmsclient/DataManager;->getDataItem(Ljava/lang/String;)Lcom/google/android/gms/wearable/DataItem;

    move-result-object v0

    .line 83
    if-nez v0, :cond_0

    .line 84
    sget-object v4, Lcom/google/android/wearable/app/WearUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Data item no longer exists."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/wearable/gmsclient/WearableException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/google/android/wearable/app/WearUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Failed to handle wearable menu item action [timelineItemId=%s]."

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p2, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 88
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 89
    .local v1, "e":Lcom/google/android/wearable/gmsclient/WearableException;
    sget-object v4, Lcom/google/android/wearable/app/WearUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Failed to handle wearable menu item action [timelineItemId=%s]."

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p2, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getAction(Landroid/app/Notification;Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Action;
    .locals 6
    .param p0, "notification"    # Landroid/app/Notification;
    .param p1, "actionIndexString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 209
    invoke-static {p1}, Lcom/google/android/wearable/app/WearUtil;->parseActionIndexString(Ljava/lang/String;)Lcom/google/android/wearable/app/WearUtil$ActionInfo;

    move-result-object v1

    .line 210
    .local v1, "actionInfo":Lcom/google/android/wearable/app/WearUtil$ActionInfo;
    if-nez v1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-object v4

    .line 214
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/wearable/app/WearUtil$ActionInfo;->getActionIndex()I

    move-result v0

    .line 215
    .local v0, "actionIndex":I
    invoke-virtual {v1}, Lcom/google/android/wearable/app/WearUtil$ActionInfo;->isWearAction()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 224
    invoke-static {p0}, Lcom/google/android/clockwork/stream/LegacyNotificationUtil;->getWearableOptions(Landroid/app/Notification;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    move-result-object v3

    .line 225
    .local v3, "wearableOptions":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getActions()Ljava/util/List;

    move-result-object v2

    .line 227
    .local v2, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/NotificationCompat$Action;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v0, :cond_0

    .line 228
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/NotificationCompat$Action;

    goto :goto_0

    .line 232
    .end local v2    # "actions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/NotificationCompat$Action;>;"
    .end local v3    # "wearableOptions":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    :cond_2
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompat;->getActionCount(Landroid/app/Notification;)I

    move-result v5

    if-le v5, v0, :cond_0

    .line 233
    invoke-static {p0, v0}, Landroid/support/v4/app/NotificationCompat;->getAction(Landroid/app/Notification;I)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v4

    goto :goto_0
.end method

.method public static getNormalActionIndexString(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 272
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWearableActionIndexString(I)Ljava/lang/String;
    .locals 3
    .param p0, "index"    # I

    .prologue
    .line 265
    const-string v0, "W"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasRemoteInputs([Landroid/support/v4/app/RemoteInput;)Z
    .locals 1
    .param p0, "remoteInputs"    # [Landroid/support/v4/app/RemoteInput;

    .prologue
    .line 128
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static notificationFromDataItem(Landroid/content/Context;Lcom/google/android/wearable/gmsclient/AssetManager;Lcom/google/android/gms/wearable/DataItem;Lcom/google/android/gms/wearable/DataMapItem;)Landroid/app/Notification;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetManager"    # Lcom/google/android/wearable/gmsclient/AssetManager;
    .param p2, "dataItem"    # Lcom/google/android/gms/wearable/DataItem;
    .param p3, "dataMapItem"    # Lcom/google/android/gms/wearable/DataMapItem;

    .prologue
    .line 120
    :try_start_0
    invoke-static {p0, p1, p3}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->notificationFromDataItem(Landroid/content/Context;Lcom/google/android/wearable/gmsclient/AssetManager;Lcom/google/android/gms/wearable/DataMapItem;)Landroid/app/Notification;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 124
    :goto_0
    return-object v1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/google/android/wearable/app/WearUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to convert data item to notification [item=%s]."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static notificationFromTimelineItemId(Landroid/content/Context;Lcom/google/android/wearable/gmsclient/DataManager;Lcom/google/android/wearable/gmsclient/AssetManager;Ljava/lang/String;)Landroid/app/Notification;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dataManager"    # Lcom/google/android/wearable/gmsclient/DataManager;
    .param p2, "assetManager"    # Lcom/google/android/wearable/gmsclient/AssetManager;
    .param p3, "timelineItemId"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-static {p0, p1, p3}, Lcom/google/android/wearable/app/WearUtil;->dataItemFromTimelineItemId(Landroid/content/Context;Lcom/google/android/wearable/gmsclient/DataManager;Ljava/lang/String;)Lcom/google/android/gms/wearable/DataItem;

    move-result-object v0

    .line 104
    .local v0, "dataItem":Lcom/google/android/gms/wearable/DataItem;
    if-nez v0, :cond_0

    .line 105
    const/4 v1, 0x0

    .line 108
    :goto_0
    return-object v1

    .line 109
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/wearable/DataMapItem;->fromDataItem(Lcom/google/android/gms/wearable/DataItem;)Lcom/google/android/gms/wearable/DataMapItem;

    move-result-object v1

    .line 108
    invoke-static {p0, p2, v0, v1}, Lcom/google/android/wearable/app/WearUtil;->notificationFromDataItem(Landroid/content/Context;Lcom/google/android/wearable/gmsclient/AssetManager;Lcom/google/android/gms/wearable/DataItem;Lcom/google/android/gms/wearable/DataMapItem;)Landroid/app/Notification;

    move-result-object v1

    goto :goto_0
.end method

.method public static parseActionIndexString(Ljava/lang/String;)Lcom/google/android/wearable/app/WearUtil$ActionInfo;
    .locals 7
    .param p0, "actionIndexString"    # Ljava/lang/String;

    .prologue
    .line 245
    const/4 v2, 0x0

    .line 246
    .local v2, "isWearableAction":Z
    move-object v1, p0

    .line 247
    .local v1, "indexValueString":Ljava/lang/String;
    const-string v3, "W"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 248
    const/4 v2, 0x1

    .line 249
    const-string v3, "W"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 253
    :cond_0
    :try_start_0
    new-instance v3, Lcom/google/android/wearable/app/WearUtil$ActionInfo;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v2, v4}, Lcom/google/android/wearable/app/WearUtil$ActionInfo;-><init>(ZI)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    return-object v3

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/google/android/wearable/app/WearUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Invalid index string [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-interface {v3, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static remoteInputFromBundle(Landroid/os/Bundle;)Landroid/support/v4/app/RemoteInput;
    .locals 8
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 177
    const-string v7, "return_key"

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 178
    .local v6, "returnKey":Ljava/lang/String;
    const-string v7, "label_html"

    .line 179
    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 178
    invoke-static {v7}, Lcom/google/android/clockwork/stream/bridger/CharSequenceUtil;->htmlToCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 180
    .local v5, "label":Ljava/lang/CharSequence;
    const-string v7, "allowFreeFormInput"

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 182
    .local v0, "allowFreeFormInput":Z
    new-instance v7, Landroid/support/v4/app/RemoteInput$Builder;

    invoke-direct {v7, v6}, Landroid/support/v4/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v7, v5}, Landroid/support/v4/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;

    move-result-object v7

    .line 184
    invoke-virtual {v7, v0}, Landroid/support/v4/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/support/v4/app/RemoteInput$Builder;

    move-result-object v1

    .line 186
    .local v1, "builder":Landroid/support/v4/app/RemoteInput$Builder;
    const-string v7, "choices_html"

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "choicesHtml":[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 188
    array-length v7, v3

    new-array v2, v7, [Ljava/lang/CharSequence;

    .line 189
    .local v2, "choices":[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, v3

    if-ge v4, v7, :cond_0

    .line 190
    aget-object v7, v3, v4

    invoke-static {v7}, Lcom/google/android/clockwork/stream/bridger/CharSequenceUtil;->htmlToCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v2, v4

    .line 189
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {v1, v2}, Landroid/support/v4/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;

    .line 194
    .end local v2    # "choices":[Ljava/lang/CharSequence;
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/app/RemoteInput$Builder;->build()Landroid/support/v4/app/RemoteInput;

    move-result-object v7

    return-object v7
.end method

.method private static remoteInputToBundle(Landroid/support/v4/app/RemoteInput;)Landroid/os/Bundle;
    .locals 7
    .param p0, "remoteInput"    # Landroid/support/v4/app/RemoteInput;

    .prologue
    .line 152
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 154
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "return_key"

    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 156
    const-string v4, "label_html"

    .line 157
    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 156
    invoke-static {v5, v6}, Lcom/google/android/clockwork/stream/bridger/CharSequenceUtil;->charSequenceToHtml(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_0
    const-string v4, "allowFreeFormInput"

    .line 160
    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v5

    .line 159
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 162
    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 163
    .local v1, "choices":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 164
    array-length v4, v1

    new-array v2, v4, [Ljava/lang/String;

    .line 165
    .local v2, "choicesHtml":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 166
    aget-object v4, v1, v3

    invoke-static {v4}, Lcom/google/android/clockwork/stream/bridger/CharSequenceUtil;->charSequenceToHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 165
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    :cond_1
    const-string v4, "choices_html"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 170
    .end local v2    # "choicesHtml":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_2
    return-object v0
.end method

.method public static remoteInputsFromBundleArray(Ljava/util/ArrayList;)[Landroid/support/v4/app/RemoteInput;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;)[",
            "Landroid/support/v4/app/RemoteInput;"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "bundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Landroid/support/v4/app/RemoteInput;

    .line 141
    .local v3, "remoteInputs":[Landroid/support/v4/app/RemoteInput;
    const/4 v1, 0x0

    .line 142
    .local v1, "index":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 143
    .local v0, "bundle":Landroid/os/Bundle;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-static {v0}, Lcom/google/android/wearable/app/WearUtil;->remoteInputFromBundle(Landroid/os/Bundle;)Landroid/support/v4/app/RemoteInput;

    move-result-object v5

    aput-object v5, v3, v1

    move v1, v2

    .line 144
    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 145
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-object v3
.end method

.method public static remoteInputsToBundleArray([Landroid/support/v4/app/RemoteInput;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "remoteInputs"    # [Landroid/support/v4/app/RemoteInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/support/v4/app/RemoteInput;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    .local v0, "bundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p0, v2

    .line 134
    .local v1, "remoteInput":Landroid/support/v4/app/RemoteInput;
    invoke-static {v1}, Lcom/google/android/wearable/app/WearUtil;->remoteInputToBundle(Landroid/support/v4/app/RemoteInput;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    .end local v1    # "remoteInput":Landroid/support/v4/app/RemoteInput;
    :cond_0
    return-object v0
.end method
