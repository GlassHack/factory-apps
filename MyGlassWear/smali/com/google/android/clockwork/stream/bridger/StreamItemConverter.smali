.class public Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;
.super Ljava/lang/Object;
.source "StreamItemConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/clockwork/stream/bridger/StreamItemConverter$PendingIntentRequestCodeGenerator;
    }
.end annotation


# static fields
.field static final DUMMY_STRING:Ljava/lang/String; = "Dummy"

.field static final DUMMY_STRING_ARRAY:[Ljava/lang/String;

.field static final KEY_ACTIONS:Ljava/lang/String; = "actions"

.field static final KEY_ALLOW_FREE_FORM_INPUT:Ljava/lang/String; = "allowFreeFormInput"

.field static final KEY_APP_ICON:Ljava/lang/String; = "app_icon"

.field static final KEY_BACKGROUND:Ljava/lang/String; = "background"

.field static final KEY_BIG_PICTURE:Ljava/lang/String; = "big_picture"

.field static final KEY_CHOICES_HTML:Ljava/lang/String; = "choices_html"

.field static final KEY_CONTENT_ACTION_INDEX:Ljava/lang/String; = "content_action_index"

.field static final KEY_CONTENT_ICON:Ljava/lang/String; = "content_icon"

.field static final KEY_CONTENT_ICON_GRAVITY:Ljava/lang/String; = "content_icon_gravity"

.field static final KEY_CUSTOM_CONTENT_HEIGHT:Ljava/lang/String; = "custom_content_height"

.field static final KEY_DEFAULTS:Ljava/lang/String; = "defaults"

.field static final KEY_GRAVITY:Ljava/lang/String; = "gravity"

.field static final KEY_GROUP_KEY:Ljava/lang/String; = "group_key"

.field static final KEY_HAS_CONTENT_INTENT:Ljava/lang/String; = "has_content_intent"

.field static final KEY_HAS_SOUND:Ljava/lang/String; = "has_sound"

.field static final KEY_HINT_HIDE_ICON:Ljava/lang/String; = "hint_hide_icon"

.field static final KEY_HINT_SHOW_BACKGROUND_ONLY:Ljava/lang/String; = "hint_show_background_only"

.field static final KEY_ICON:Ljava/lang/String; = "icon"

.field static final KEY_INBOX_LINES_HTML:Ljava/lang/String; = "inbox_lines"

.field static final KEY_IS_GROUP_SUMMARY:Ljava/lang/String; = "is_group_summary"

.field static final KEY_LABEL_HTML:Ljava/lang/String; = "label_html"

.field static final KEY_LARGE_ICON:Ljava/lang/String; = "large_icon"

.field static final KEY_ONLY_ALERT_ONCE:Ljava/lang/String; = "only_alert_once"

.field static final KEY_PAGES:Ljava/lang/String; = "pages"

.field static final KEY_PRIORITY:Ljava/lang/String; = "priority"

.field static final KEY_REMOTE_INPUTS:Ljava/lang/String; = "remote_inputs"

.field static final KEY_REMOTE_INPUT_LEGACY_CHOICES:Ljava/lang/String; = "choices"

.field static final KEY_REMOTE_INPUT_LEGACY_LABEL:Ljava/lang/String; = "label"

.field static final KEY_RETURN_KEY:Ljava/lang/String; = "return_key"

.field static final KEY_SIZE_PRESET:Ljava/lang/String; = "size_preset"

.field static final KEY_SORT_KEY:Ljava/lang/String; = "sort_key"

.field static final KEY_START_SCROLL_BOTTOM:Ljava/lang/String; = "start_scroll_bottom"

.field static final KEY_SUB_TEXT_HTML:Ljava/lang/String; = "sub_text_html"

.field static final KEY_TEXT_HTML:Ljava/lang/String; = "text_html"

.field static final KEY_TITLE_HTML:Ljava/lang/String; = "title_html"

.field static final KEY_USES_CHRONOMETER:Ljava/lang/String; = "uses_chronometer"

.field static final KEY_VIBRATE:Ljava/lang/String; = "vibrate"

.field static final KEY_WEARABLE_ACTIONS:Ljava/lang/String; = "wearable_actions"

.field static final KEY_WHEN:Ljava/lang/String; = "when"

.field static final MAX_ASSET_SIZE_PX:I = 0x140

.field private static final TAG:Ljava/lang/String; = "StreamItemConverter"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Dummy"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->DUMMY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 709
    return-void
.end method

.method public static buildDataMapRequest(Landroid/content/Context;Lcom/google/android/clockwork/stream/StreamItemEntry;)Lcom/google/android/gms/wearable/PutDataMapRequest;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "streamItem"    # Lcom/google/android/clockwork/stream/StreamItemEntry;

    .prologue
    .line 120
    invoke-virtual {p1}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 122
    .local v0, "notification":Landroid/app/Notification;
    invoke-static {p1}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->dataItemPathForStreamItem(Lcom/google/android/clockwork/stream/StreamItemEntry;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/wearable/PutDataMapRequest;->create(Ljava/lang/String;)Lcom/google/android/gms/wearable/PutDataMapRequest;

    move-result-object v1

    .line 124
    .local v1, "putDataMapItemRequest":Lcom/google/android/gms/wearable/PutDataMapRequest;
    invoke-virtual {v1}, Lcom/google/android/gms/wearable/PutDataMapRequest;->getDataMap()Lcom/google/android/gms/wearable/DataMap;

    move-result-object v2

    invoke-static {v2, v0, p0, p1}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->buildNotificationDataMap(Lcom/google/android/gms/wearable/DataMap;Landroid/app/Notification;Landroid/content/Context;Lcom/google/android/clockwork/stream/StreamItem;)V

    .line 126
    return-object v1
.end method

.method private static buildNotificationDataMap(Lcom/google/android/gms/wearable/DataMap;Landroid/app/Notification;Landroid/content/Context;Lcom/google/android/clockwork/stream/StreamItem;)V
    .locals 31
    .param p0, "data"    # Lcom/google/android/gms/wearable/DataMap;
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "streamItem"    # Lcom/google/android/clockwork/stream/StreamItem;

    .prologue
    .line 131
    invoke-static/range {p1 .. p1}, Lcom/google/android/clockwork/stream/LegacyNotificationUtil;->getWearableOptions(Landroid/app/Notification;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    move-result-object v27

    .line 134
    .local v27, "wearableOptions":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    invoke-static/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v11

    .line 135
    .local v11, "extras":Landroid/os/Bundle;
    const-string v28, "android.title"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v26

    .line 136
    .local v26, "title":Ljava/lang/CharSequence;
    const-string v28, "android.text"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v25

    .line 137
    .local v25, "text":Ljava/lang/CharSequence;
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_0

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 141
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/google/android/clockwork/stream/bridger/RemoteViewExtractor;->extractRemoteViewText(Landroid/content/Context;Landroid/app/Notification;)Landroid/util/Pair;

    move-result-object v10

    .line 143
    .local v10, "extract":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v26, v0

    .end local v26    # "title":Ljava/lang/CharSequence;
    check-cast v26, Ljava/lang/CharSequence;

    .line 144
    .restart local v26    # "title":Ljava/lang/CharSequence;
    iget-object v0, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v25, v0

    .end local v25    # "text":Ljava/lang/CharSequence;
    check-cast v25, Ljava/lang/CharSequence;

    .line 146
    .restart local v25    # "text":Ljava/lang/CharSequence;
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_0

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_0

    .line 149
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/google/android/clockwork/stream/bridger/RemoteViewExtractor;->isTitleAppropriateLength(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 150
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    .line 158
    .end local v10    # "extract":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    :cond_0
    :goto_0
    const-string v28, "title_html"

    const-string v29, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/google/android/clockwork/stream/bridger/CharSequenceUtil;->charSequenceToHtml(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v28, "text_html"

    const-string v29, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/google/android/clockwork/stream/bridger/CharSequenceUtil;->charSequenceToHtml(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v28, "android.subText"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v24

    .line 161
    .local v24, "subText":Ljava/lang/CharSequence;
    if-eqz v24, :cond_1

    .line 162
    const-string v28, "sub_text_html"

    const-string v29, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/google/android/clockwork/stream/bridger/CharSequenceUtil;->charSequenceToHtml(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_1
    const-string/jumbo v28, "when"

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide/from16 v2, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/wearable/DataMap;->putLong(Ljava/lang/String;J)V

    .line 166
    const-string v28, "priority"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/Notification;->priority:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/DataMap;->putInt(Ljava/lang/String;I)V

    .line 167
    const-string v28, "uses_chronometer"

    const-string v29, "android.showChronometer"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/DataMap;->putBoolean(Ljava/lang/String;Z)V

    .line 169
    const-string v28, "defaults"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/DataMap;->putInt(Ljava/lang/String;I)V

    .line 170
    const-string v29, "has_sound"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v28, v0

    if-eqz v28, :cond_10

    const/16 v28, 0x1

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/DataMap;->putBoolean(Ljava/lang/String;Z)V

    .line 172
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/Notification;->vibrate:[J

    move-object/from16 v28, v0

    if-eqz v28, :cond_2

    .line 173
    const-string/jumbo v28, "vibrate"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/Notification;->vibrate:[J

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/DataMap;->putLongArray(Ljava/lang/String;[J)V

    .line 176
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, 0x8

    if-eqz v28, :cond_3

    .line 177
    const-string v28, "only_alert_once"

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/DataMap;->putBoolean(Ljava/lang/String;Z)V

    .line 179
    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v28, v0

    if-eqz v28, :cond_4

    .line 180
    invoke-interface/range {p3 .. p3}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/android/clockwork/stream/StreamItemId;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v29, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/google/android/wearable/gmsclient/AssetUtil;->loadBitmapAssetFromResourcesForWearable(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/wearable/Asset;

    move-result-object v15

    .line 182
    .local v15, "iconAsset":Lcom/google/android/gms/wearable/Asset;
    if-eqz v15, :cond_4

    .line 183
    const-string v28, "icon"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v15}, Lcom/google/android/gms/wearable/DataMap;->putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)V

    .line 187
    .end local v15    # "iconAsset":Lcom/google/android/gms/wearable/Asset;
    :cond_4
    const-string v28, "android.largeIcon"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/graphics/Bitmap;

    .line 188
    .local v18, "largeIconBitmap":Landroid/graphics/Bitmap;
    if-eqz v18, :cond_5

    .line 189
    const-string v28, "large_icon"

    const/16 v29, 0x140

    move/from16 v0, v29

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->fitToSize(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/wearable/gmsclient/AssetUtil;->createAssetFromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/wearable/Asset;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/DataMap;->putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)V

    .line 193
    :cond_5
    const-string v28, "android.picture"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    .line 194
    .local v9, "bigPictureBitmap":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_6

    .line 195
    const-string v28, "big_picture"

    const/16 v29, 0x140

    move/from16 v0, v29

    invoke-static {v0, v9}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->fitToSize(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/wearable/gmsclient/AssetUtil;->createAssetFromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/wearable/Asset;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/DataMap;->putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)V

    .line 200
    :cond_6
    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getBackground()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 201
    .local v8, "backgroundBitmap":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_7

    .line 202
    const-string v28, "background"

    const/16 v29, 0x140

    move/from16 v0, v29

    invoke-static {v0, v8}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->fitToSize(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/wearable/gmsclient/AssetUtil;->createAssetFromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/wearable/Asset;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/DataMap;->putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)V

    .line 206
    :cond_7
    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getContentIcon()I

    move-result v28

    if-eqz v28, :cond_8

    .line 207
    invoke-interface/range {p3 .. p3}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/android/clockwork/stream/StreamItemId;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getContentIcon()I

    move-result v29

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/google/android/wearable/gmsclient/AssetUtil;->loadBitmapAssetFromResourcesForWearable(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/wearable/Asset;

    move-result-object v15

    .line 209
    .restart local v15    # "iconAsset":Lcom/google/android/gms/wearable/Asset;
    if-eqz v15, :cond_8

    .line 210
    const-string v28, "content_icon"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v15}, Lcom/google/android/gms/wearable/DataMap;->putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)V

    .line 213
    .end local v15    # "iconAsset":Lcom/google/android/gms/wearable/Asset;
    :cond_8
    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getContentIconGravity()I

    move-result v28

    const v29, 0x800005

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_9

    .line 214
    const-string v28, "content_icon_gravity"

    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getContentIconGravity()I

    move-result v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/DataMap;->putInt(Ljava/lang/String;I)V

    .line 217
    :cond_9
    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getContentAction()I

    move-result v28

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_a

    .line 218
    const-string v28, "content_action_index"

    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getContentAction()I

    move-result v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/DataMap;->putInt(Ljava/lang/String;I)V

    .line 221
    :cond_a
    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getGravity()I

    move-result v28

    const/16 v29, 0x50

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_b

    .line 222
    const-string v28, "gravity"

    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getGravity()I

    move-result v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/DataMap;->putInt(Ljava/lang/String;I)V

    .line 225
    :cond_b
    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getCustomSizePreset()I

    move-result v28

    if-eqz v28, :cond_c

    .line 226
    const-string v28, "size_preset"

    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getCustomSizePreset()I

    move-result v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/DataMap;->putInt(Ljava/lang/String;I)V

    .line 229
    :cond_c
    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getCustomContentHeight()I

    move-result v28

    if-eqz v28, :cond_d

    .line 230
    const-string v28, "custom_content_height"

    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getCustomContentHeight()I

    move-result v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/DataMap;->putInt(Ljava/lang/String;I)V

    .line 233
    :cond_d
    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getStartScrollBottom()Z

    move-result v28

    if-eqz v28, :cond_e

    .line 234
    const-string v28, "start_scroll_bottom"

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/DataMap;->putBoolean(Ljava/lang/String;Z)V

    .line 238
    :cond_e
    const-string v28, "android.textLines"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v16

    .line 240
    .local v16, "inboxLines":[Ljava/lang/CharSequence;
    if-eqz v16, :cond_12

    .line 241
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 242
    .local v17, "inboxStrings":[Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v13, v0, :cond_11

    .line 243
    aget-object v28, v16, v13

    const-string v29, ""

    invoke-static/range {v28 .. v29}, Lcom/google/android/clockwork/stream/bridger/CharSequenceUtil;->charSequenceToHtml(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v17, v13

    .line 242
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 153
    .end local v8    # "backgroundBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "bigPictureBitmap":Landroid/graphics/Bitmap;
    .end local v13    # "i":I
    .end local v16    # "inboxLines":[Ljava/lang/CharSequence;
    .end local v17    # "inboxStrings":[Ljava/lang/String;
    .end local v18    # "largeIconBitmap":Landroid/graphics/Bitmap;
    .end local v24    # "subText":Ljava/lang/CharSequence;
    .restart local v10    # "extract":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    goto/16 :goto_0

    .line 170
    .end local v10    # "extract":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    .restart local v24    # "subText":Ljava/lang/CharSequence;
    :cond_10
    const/16 v28, 0x0

    goto/16 :goto_1

    .line 245
    .restart local v8    # "backgroundBitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "bigPictureBitmap":Landroid/graphics/Bitmap;
    .restart local v13    # "i":I
    .restart local v16    # "inboxLines":[Ljava/lang/CharSequence;
    .restart local v17    # "inboxStrings":[Ljava/lang/String;
    .restart local v18    # "largeIconBitmap":Landroid/graphics/Bitmap;
    :cond_11
    const-string v28, "inbox_lines"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/DataMap;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 248
    .end local v13    # "i":I
    .end local v17    # "inboxStrings":[Ljava/lang/String;
    :cond_12
    invoke-interface/range {p3 .. p3}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/android/clockwork/stream/StreamItemId;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->getAppIconAsAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/wearable/Asset;

    move-result-object v7

    .line 249
    .local v7, "appIconAsset":Lcom/google/android/gms/wearable/Asset;
    if-eqz v7, :cond_13

    .line 250
    const-string v28, "app_icon"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v7}, Lcom/google/android/gms/wearable/DataMap;->putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)V

    .line 254
    :cond_13
    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getActions()Ljava/util/List;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_14

    .line 255
    const-string/jumbo v28, "wearable_actions"

    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getActions()Ljava/util/List;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->getDataListForActions(Landroid/content/Context;Lcom/google/android/clockwork/stream/StreamItem;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/DataMap;->putDataMapArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 258
    :cond_14
    invoke-static/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat;->getActionCount(Landroid/app/Notification;)I

    move-result v4

    .line 259
    .local v4, "actionCount":I
    if-lez v4, :cond_16

    .line 260
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 262
    .local v6, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/NotificationCompat$Action;>;"
    const/4 v5, 0x0

    .local v5, "actionIndex":I
    :goto_3
    if-ge v5, v4, :cond_15

    .line 263
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/app/NotificationCompat;->getAction(Landroid/app/Notification;I)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 265
    :cond_15
    const-string v28, "actions"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, v1, v6}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->getDataListForActions(Landroid/content/Context;Lcom/google/android/clockwork/stream/StreamItem;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/DataMap;->putDataMapArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 269
    .end local v5    # "actionIndex":I
    .end local v6    # "actions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/NotificationCompat$Action;>;"
    :cond_16
    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getPages()Ljava/util/List;

    move-result-object v22

    .line 270
    .local v22, "pages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_18

    .line 271
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v21, "pageDataMaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/wearable/DataMap;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_17

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/Notification;

    .line 273
    .local v19, "notifPage":Landroid/app/Notification;
    new-instance v20, Lcom/google/android/gms/wearable/DataMap;

    invoke-direct/range {v20 .. v20}, Lcom/google/android/gms/wearable/DataMap;-><init>()V

    .line 274
    .local v20, "pageData":Lcom/google/android/gms/wearable/DataMap;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->buildNotificationDataMap(Lcom/google/android/gms/wearable/DataMap;Landroid/app/Notification;Landroid/content/Context;Lcom/google/android/clockwork/stream/StreamItem;)V

    .line 275
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 277
    .end local v19    # "notifPage":Landroid/app/Notification;
    .end local v20    # "pageData":Lcom/google/android/gms/wearable/DataMap;
    :cond_17
    const-string v28, "pages"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/DataMap;->putDataMapArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 280
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v21    # "pageDataMaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/wearable/DataMap;>;"
    :cond_18
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v28, v0

    if-eqz v28, :cond_19

    .line 281
    const-string v28, "has_content_intent"

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/DataMap;->putBoolean(Ljava/lang/String;Z)V

    .line 284
    :cond_19
    invoke-static/range {p1 .. p1}, Lcom/google/android/clockwork/stream/LegacyNotificationUtil;->getGroup(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v12

    .line 285
    .local v12, "groupKey":Ljava/lang/String;
    if-eqz v12, :cond_1a

    .line 286
    const-string v28, "group_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v12}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v28, "is_group_summary"

    invoke-static/range {p1 .. p1}, Lcom/google/android/clockwork/stream/LegacyNotificationUtil;->isGroupSummary(Landroid/app/Notification;)Z

    move-result v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/DataMap;->putBoolean(Ljava/lang/String;Z)V

    .line 291
    :cond_1a
    invoke-static/range {p1 .. p1}, Lcom/google/android/clockwork/stream/LegacyNotificationUtil;->getSortKey(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v23

    .line 292
    .local v23, "sortKey":Ljava/lang/String;
    if-eqz v23, :cond_1b

    .line 293
    const-string v28, "sort_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_1b
    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getHintHideIcon()Z

    move-result v28

    if-eqz v28, :cond_1c

    .line 297
    const-string v28, "hint_hide_icon"

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/DataMap;->putBoolean(Ljava/lang/String;Z)V

    .line 300
    :cond_1c
    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getHintShowBackgroundOnly()Z

    move-result v28

    if-eqz v28, :cond_1d

    .line 301
    const-string v28, "hint_show_background_only"

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/DataMap;->putBoolean(Ljava/lang/String;Z)V

    .line 303
    :cond_1d
    return-void
.end method

.method public static dataItemPathForRemoteStreamItemId(Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;)Ljava/lang/String;
    .locals 1
    .param p0, "remoteStreamItemId"    # Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dataItemPathForStreamItem(Lcom/google/android/clockwork/stream/StreamItemEntry;)Ljava/lang/String;
    .locals 3
    .param p0, "streamItem"    # Lcom/google/android/clockwork/stream/StreamItemEntry;

    .prologue
    .line 94
    new-instance v0, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;

    invoke-virtual {p0}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getCreatorNodeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;-><init>(Ljava/lang/String;Lcom/google/android/clockwork/stream/StreamItemEntryId;)V

    invoke-static {v0}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->dataItemPathForRemoteStreamItemId(Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static fitToSize(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "sizePx"    # I
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 670
    if-nez p1, :cond_1

    .line 671
    const/4 p1, 0x0

    .line 705
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p1

    .line 674
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 675
    .local v9, "sourceW":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 676
    .local v8, "sourceH":I
    if-le v9, p0, :cond_0

    if-le v8, p0, :cond_0

    .line 684
    const/4 v1, 0x0

    .line 685
    .local v1, "offsetX":I
    const/4 v2, 0x0

    .line 689
    .local v2, "offsetY":I
    if-le v9, v8, :cond_2

    .line 690
    move v3, v8

    .line 691
    .local v3, "shortLength":I
    int-to-float v0, v8

    int-to-float v4, p0

    div-float v7, v0, v4

    .line 692
    .local v7, "ratio":F
    sub-int v0, v9, v8

    int-to-double v10, v0

    div-double/2addr v10, v12

    double-to-int v1, v10

    .line 699
    :goto_1
    float-to-double v10, v7

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v10, v12

    if-gez v0, :cond_0

    .line 703
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 704
    .local v5, "m":Landroid/graphics/Matrix;
    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 705
    const/4 v6, 0x1

    move-object v0, p1

    move v4, v3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 694
    .end local v3    # "shortLength":I
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "ratio":F
    :cond_2
    move v3, v9

    .line 695
    .restart local v3    # "shortLength":I
    int-to-float v0, v9

    int-to-float v4, p0

    div-float v7, v0, v4

    .line 696
    .restart local v7    # "ratio":F
    sub-int v0, v8, v9

    int-to-double v10, v0

    div-double/2addr v10, v12

    double-to-int v2, v10

    goto :goto_1
.end method

.method private static getActionFromData(Landroid/content/Context;Lcom/google/android/wearable/gmsclient/AssetManager;Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;IZLandroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Action;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetManager"    # Lcom/google/android/wearable/gmsclient/AssetManager;
    .param p2, "remoteStreamItemId"    # Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;
    .param p3, "actionIndex"    # I
    .param p4, "isWearableAction"    # Z
    .param p5, "actionData"    # Landroid/os/Bundle;

    .prologue
    .line 574
    const-string v10, "title_html"

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/clockwork/stream/bridger/CharSequenceUtil;->htmlToCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 576
    .local v5, "actionTitle":Ljava/lang/CharSequence;
    new-instance v7, Landroid/content/Intent;

    const-string v10, "com.google.android.clockwork.stream.bridger.NotificationBridgerService.NOTIFICATION_ACTION"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 577
    .local v7, "intent":Landroid/content/Intent;
    const-string v10, "com.google.android.wearable.stream.REMOTE_STREAM_ITEM_ID"

    invoke-virtual {p2}, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    const-string v10, "action_index"

    move/from16 v0, p3

    invoke-virtual {v7, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 580
    const-string v10, "is_wearable_action"

    move/from16 v0, p4

    invoke-virtual {v7, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 581
    const-string v10, "bridger"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 583
    const-class v10, Lcom/google/android/clockwork/stream/bridger/NotificationBridgerService;

    invoke-virtual {v7, p0, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 584
    const/4 v10, 0x0

    const/high16 v11, 0x10000000

    invoke-static {p0, v10, v7, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 587
    .local v4, "actionIntent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    const/4 v10, 0x0

    invoke-direct {v2, v10, v5, v4}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 591
    .local v2, "actionBuilder":Landroid/support/v4/app/NotificationCompat$Action$Builder;
    const-string v10, "icon"

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/wearable/Asset;

    .line 592
    .local v3, "actionIcon":Lcom/google/android/gms/wearable/Asset;
    if-eqz v3, :cond_0

    .line 593
    const/16 v10, 0x140

    invoke-static {p1, v3}, Lcom/google/android/wearable/gmsclient/AssetUtil;->loadBitmapFromAsset(Lcom/google/android/wearable/gmsclient/AssetManager;Lcom/google/android/gms/wearable/Asset;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->fitToSize(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 595
    .local v1, "actionBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "com.google.android.wearable.stream.ACTION_ICON_BITMAP"

    invoke-virtual {v10, v11, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 599
    .end local v1    # "actionBitmap":Landroid/graphics/Bitmap;
    :cond_0
    const-string v10, "remote_inputs"

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 601
    .local v9, "remoteInputsData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz v9, :cond_1

    .line 602
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 603
    .local v8, "remoteInputData":Landroid/os/Bundle;
    invoke-static {v8}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->remoteInputFromData(Landroid/os/Bundle;)Landroid/support/v4/app/RemoteInput;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->addRemoteInput(Landroid/support/v4/app/RemoteInput;)Landroid/support/v4/app/NotificationCompat$Action$Builder;

    goto :goto_0

    .line 609
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "remoteInputData":Landroid/os/Bundle;
    :cond_1
    new-instance v10, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;

    invoke-direct {v10}, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;-><init>()V

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->setAvailableOffline(Z)Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Action$Extender;)Landroid/support/v4/app/NotificationCompat$Action$Builder;

    .line 611
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v10

    return-object v10
.end method

.method private static getAppIconAsAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/wearable/Asset;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 336
    const/4 v0, 0x0

    .line 338
    .local v0, "appIcon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 343
    :goto_0
    if-eqz v0, :cond_0

    .line 344
    invoke-static {v0}, Lcom/google/android/wearable/gmsclient/AssetUtil;->createAssetFromDrawable(Landroid/graphics/drawable/Drawable;)Lcom/google/android/gms/wearable/Asset;

    move-result-object v2

    .line 347
    :goto_1
    return-object v2

    .line 339
    :catch_0
    move-exception v1

    .line 340
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "StreamItemConverter"

    const-string v3, "Package name not found."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 347
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static getDataListForActions(Landroid/content/Context;Lcom/google/android/clockwork/stream/StreamItem;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "streamItem"    # Lcom/google/android/clockwork/stream/StreamItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/clockwork/stream/StreamItem;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wearable/DataMap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    .local p2, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/NotificationCompat$Action;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 308
    .local v11, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/wearable/DataMap;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/NotificationCompat$Action;

    .line 309
    .local v0, "action":Landroid/support/v4/app/NotificationCompat$Action;
    new-instance v1, Lcom/google/android/gms/wearable/DataMap;

    invoke-direct {v1}, Lcom/google/android/gms/wearable/DataMap;-><init>()V

    .line 310
    .local v1, "actionData":Lcom/google/android/gms/wearable/DataMap;
    const-string v12, "title_html"

    iget-object v13, v0, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/google/android/clockwork/stream/bridger/CharSequenceUtil;->charSequenceToHtml(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInput;

    move-result-object v9

    .line 312
    .local v9, "remoteInputs":[Landroid/support/v4/app/RemoteInput;
    if-eqz v9, :cond_2

    .line 313
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v10, "remoteInputsData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/wearable/DataMap;>;"
    move-object v3, v9

    .local v3, "arr$":[Landroid/support/v4/app/RemoteInput;
    array-length v6, v3

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v7, v3, v5

    .line 315
    .local v7, "remoteInput":Landroid/support/v4/app/RemoteInput;
    invoke-interface/range {p1 .. p1}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v12

    iget-object v12, v12, Lcom/google/android/clockwork/stream/StreamItemId;->packageName:Ljava/lang/String;

    invoke-static {v12, v7}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->remoteInputToData(Ljava/lang/String;Landroid/support/v4/app/RemoteInput;)Lcom/google/android/gms/wearable/DataMap;

    move-result-object v8

    .line 317
    .local v8, "remoteInputData":Lcom/google/android/gms/wearable/DataMap;
    if-eqz v8, :cond_0

    .line 318
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 321
    .end local v7    # "remoteInput":Landroid/support/v4/app/RemoteInput;
    .end local v8    # "remoteInputData":Lcom/google/android/gms/wearable/DataMap;
    :cond_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    .line 322
    const-string v12, "remote_inputs"

    invoke-virtual {v1, v12, v10}, Lcom/google/android/gms/wearable/DataMap;->putDataMapArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 325
    .end local v3    # "arr$":[Landroid/support/v4/app/RemoteInput;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v10    # "remoteInputsData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/wearable/DataMap;>;"
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v12

    iget-object v12, v12, Lcom/google/android/clockwork/stream/StreamItemId;->packageName:Ljava/lang/String;

    iget v13, v0, Landroid/support/v4/app/NotificationCompat$Action;->icon:I

    invoke-static {p0, v12, v13}, Lcom/google/android/wearable/gmsclient/AssetUtil;->loadBitmapAssetFromResourcesForWearable(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/wearable/Asset;

    move-result-object v2

    .line 327
    .local v2, "actionIconAsset":Lcom/google/android/gms/wearable/Asset;
    if-eqz v2, :cond_3

    .line 328
    const-string v12, "icon"

    invoke-virtual {v1, v12, v2}, Lcom/google/android/gms/wearable/DataMap;->putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)V

    .line 330
    :cond_3
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 332
    .end local v0    # "action":Landroid/support/v4/app/NotificationCompat$Action;
    .end local v1    # "actionData":Lcom/google/android/gms/wearable/DataMap;
    .end local v2    # "actionIconAsset":Lcom/google/android/gms/wearable/Asset;
    .end local v9    # "remoteInputs":[Landroid/support/v4/app/RemoteInput;
    :cond_4
    return-object v11
.end method

.method private static notificationFromBundle(Landroid/content/Context;Lcom/google/android/wearable/gmsclient/AssetManager;Landroid/os/Bundle;Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;)Landroid/app/Notification;
    .locals 48
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetManager"    # Lcom/google/android/wearable/gmsclient/AssetManager;
    .param p2, "data"    # Landroid/os/Bundle;
    .param p3, "remoteStreamItemId"    # Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;

    .prologue
    .line 364
    const-string v4, "title_html"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/clockwork/stream/bridger/CharSequenceUtil;->htmlToCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v45

    .line 365
    .local v45, "title":Ljava/lang/CharSequence;
    const-string v4, "text_html"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/clockwork/stream/bridger/CharSequenceUtil;->htmlToCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v44

    .line 367
    .local v44, "text":Ljava/lang/CharSequence;
    const-string v4, "sub_text_html"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 368
    .local v43, "subTextHtml":Ljava/lang/String;
    const/16 v42, 0x0

    .line 369
    .local v42, "subText":Ljava/lang/CharSequence;
    if-eqz v43, :cond_0

    .line 370
    invoke-static/range {v43 .. v43}, Lcom/google/android/clockwork/stream/bridger/CharSequenceUtil;->htmlToCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v42

    .line 373
    :cond_0
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const-string/jumbo v5, "when"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const-string v5, "priority"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const-string v5, "uses_chronometer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setUsesChronometer(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const-string v5, "defaults"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v18

    .line 381
    .local v18, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v47, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct/range {v47 .. v47}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>()V

    .line 383
    .local v47, "wearableOptions":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    .line 386
    .local v23, "extras":Landroid/os/Bundle;
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 388
    const-string v4, "has_sound"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 390
    const-string v4, "defaults"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    or-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 393
    :cond_1
    const-string/jumbo v4, "vibrate"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 395
    const-string v4, "only_alert_once"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 396
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 401
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 405
    const/16 v28, 0x0

    .line 406
    .local v28, "iconBitmap":Landroid/graphics/Bitmap;
    const-string v4, "app_icon"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/wearable/Asset;

    .line 407
    .local v11, "appIconAsset":Lcom/google/android/gms/wearable/Asset;
    if-eqz v11, :cond_3

    .line 408
    const/16 v4, 0x140

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/google/android/wearable/gmsclient/AssetUtil;->loadBitmapFromAsset(Lcom/google/android/wearable/gmsclient/AssetManager;Lcom/google/android/gms/wearable/Asset;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->fitToSize(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v28

    .line 411
    :cond_3
    if-nez v28, :cond_4

    .line 412
    const-string v4, "icon"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v27

    check-cast v27, Lcom/google/android/gms/wearable/Asset;

    .line 413
    .local v27, "iconAsset":Lcom/google/android/gms/wearable/Asset;
    if-eqz v27, :cond_4

    .line 414
    const/16 v4, 0x140

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/wearable/gmsclient/AssetUtil;->loadBitmapFromAsset(Lcom/google/android/wearable/gmsclient/AssetManager;Lcom/google/android/gms/wearable/Asset;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->fitToSize(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v28

    .line 418
    .end local v27    # "iconAsset":Lcom/google/android/gms/wearable/Asset;
    :cond_4
    if-eqz v28, :cond_5

    .line 419
    const-string v4, "com.google.android.wearable.stream.ICON_BITMAP"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 422
    :cond_5
    const-string v4, "large_icon"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v33

    check-cast v33, Lcom/google/android/gms/wearable/Asset;

    .line 423
    .local v33, "largeIconAsset":Lcom/google/android/gms/wearable/Asset;
    if-eqz v33, :cond_6

    .line 424
    const/16 v4, 0x140

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/google/android/wearable/gmsclient/AssetUtil;->loadBitmapFromAsset(Lcom/google/android/wearable/gmsclient/AssetManager;Lcom/google/android/gms/wearable/Asset;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->fitToSize(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v34

    .line 426
    .local v34, "largeIconBitmap":Landroid/graphics/Bitmap;
    if-eqz v34, :cond_6

    .line 427
    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 431
    .end local v34    # "largeIconBitmap":Landroid/graphics/Bitmap;
    :cond_6
    const-string v4, "big_picture"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/wearable/Asset;

    .line 432
    .local v15, "bigPictureAsset":Lcom/google/android/gms/wearable/Asset;
    if-eqz v15, :cond_7

    .line 433
    const/16 v4, 0x140

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/wearable/gmsclient/AssetUtil;->loadBitmapFromAsset(Lcom/google/android/wearable/gmsclient/AssetManager;Lcom/google/android/gms/wearable/Asset;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->fitToSize(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 436
    .local v16, "bigPictureBitmap":Landroid/graphics/Bitmap;
    if-eqz v16, :cond_7

    .line 437
    new-instance v17, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct/range {v17 .. v17}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>()V

    .line 439
    .local v17, "bigPictureStyle":Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    .line 440
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 444
    .end local v16    # "bigPictureBitmap":Landroid/graphics/Bitmap;
    .end local v17    # "bigPictureStyle":Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    :cond_7
    const-string v4, "background"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/wearable/Asset;

    .line 445
    .local v13, "backgroundAsset":Lcom/google/android/gms/wearable/Asset;
    if-eqz v13, :cond_8

    .line 446
    const/16 v4, 0x140

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/google/android/wearable/gmsclient/AssetUtil;->loadBitmapFromAsset(Lcom/google/android/wearable/gmsclient/AssetManager;Lcom/google/android/gms/wearable/Asset;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->fitToSize(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 448
    .local v14, "backgroundBitmap":Landroid/graphics/Bitmap;
    if-eqz v14, :cond_8

    .line 449
    move-object/from16 v0, v47

    invoke-virtual {v0, v14}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setBackground(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 453
    .end local v14    # "backgroundBitmap":Landroid/graphics/Bitmap;
    :cond_8
    const-string v4, "content_icon"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Lcom/google/android/gms/wearable/Asset;

    .line 454
    .local v19, "contentIconAsset":Lcom/google/android/gms/wearable/Asset;
    if-eqz v19, :cond_9

    .line 455
    const/16 v4, 0x140

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/wearable/gmsclient/AssetUtil;->loadBitmapFromAsset(Lcom/google/android/wearable/gmsclient/AssetManager;Lcom/google/android/gms/wearable/Asset;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->fitToSize(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 457
    .local v20, "contentIconBitmap":Landroid/graphics/Bitmap;
    if-eqz v20, :cond_9

    .line 458
    const-string v4, "com.google.android.wearable.stream.CONTENT_ICON_BITMAP"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 461
    .end local v20    # "contentIconBitmap":Landroid/graphics/Bitmap;
    :cond_9
    const-string v4, "content_icon_gravity"

    const v5, 0x800005

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setContentIconGravity(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 464
    const-string v4, "content_action_index"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setContentAction(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 467
    const-string v4, "gravity"

    const/16 v5, 0x50

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setGravity(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 469
    const-string v4, "size_preset"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setCustomSizePreset(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 472
    const-string v4, "custom_content_height"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setCustomContentHeight(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 474
    const-string v4, "start_scroll_bottom"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setStartScrollBottom(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 477
    const-string v4, "inbox_lines"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .line 478
    .local v30, "inboxLines":[Ljava/lang/String;
    if-eqz v30, :cond_b

    move-object/from16 v0, v30

    array-length v4, v0

    if-lez v4, :cond_b

    .line 479
    new-instance v31, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct/range {v31 .. v31}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 480
    .local v31, "inboxStyle":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    move-object/from16 v12, v30

    .local v12, "arr$":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v35, v0

    .local v35, "len$":I
    const/16 v26, 0x0

    .local v26, "i$":I
    :goto_0
    move/from16 v0, v26

    move/from16 v1, v35

    if-ge v0, v1, :cond_a

    aget-object v29, v12, v26

    .line 481
    .local v29, "inboxLine":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/google/android/clockwork/stream/bridger/CharSequenceUtil;->htmlToCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 480
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 483
    .end local v29    # "inboxLine":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 486
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v26    # "i$":I
    .end local v31    # "inboxStyle":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    .end local v35    # "len$":I
    :cond_b
    const-string v4, "actions"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 487
    .local v10, "actionsData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz v10, :cond_c

    .line 488
    const/4 v7, 0x0

    .local v7, "actionIndex":I
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v21

    .local v21, "count":I
    :goto_1
    move/from16 v0, v21

    if-ge v7, v0, :cond_c

    .line 490
    const/4 v8, 0x0

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    invoke-static/range {v4 .. v9}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->getActionFromData(Landroid/content/Context;Lcom/google/android/wearable/gmsclient/AssetManager;Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;IZLandroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 489
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 495
    .end local v7    # "actionIndex":I
    .end local v21    # "count":I
    :cond_c
    const-string/jumbo v4, "wearable_actions"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v46

    .line 496
    .local v46, "wearableActionsData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz v46, :cond_d

    .line 497
    const/4 v7, 0x0

    .restart local v7    # "actionIndex":I
    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v21

    .restart local v21    # "count":I
    :goto_2
    move/from16 v0, v21

    if-ge v7, v0, :cond_d

    .line 499
    const/4 v8, 0x1

    move-object/from16 v0, v46

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    invoke-static/range {v4 .. v9}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->getActionFromData(Landroid/content/Context;Lcom/google/android/wearable/gmsclient/AssetManager;Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;IZLandroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v4

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 498
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 506
    .end local v7    # "actionIndex":I
    .end local v21    # "count":I
    :cond_d
    const-string v4, "has_content_intent"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 507
    new-instance v32, Landroid/content/Intent;

    const-string v4, "com.google.android.clockwork.stream.bridger.NotificationBridgerService.NOTIFICATION_CONTENT_INTENT"

    move-object/from16 v0, v32

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 508
    .local v32, "intent":Landroid/content/Intent;
    const-string v4, "com.google.android.wearable.stream.REMOTE_STREAM_ITEM_ID"

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    const-string v4, "bridger"

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->getKey()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 512
    const-class v4, Lcom/google/android/clockwork/stream/bridger/NotificationBridgerService;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 513
    const/4 v4, 0x0

    const/high16 v5, 0x10000000

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-static {v0, v4, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v40

    .line 515
    .local v40, "pendingIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 519
    const/4 v4, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setContentIntentAvailableOffline(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 522
    .end local v32    # "intent":Landroid/content/Intent;
    .end local v40    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_e
    const-string v4, "pages"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v39

    .line 523
    .local v39, "pagesData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz v39, :cond_f

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_f

    .line 524
    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/os/Bundle;

    .line 525
    .local v38, "pageData":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->notificationFromBundle(Landroid/content/Context;Lcom/google/android/wearable/gmsclient/AssetManager;Landroid/os/Bundle;Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;)Landroid/app/Notification;

    move-result-object v37

    .line 527
    .local v37, "page":Landroid/app/Notification;
    move-object/from16 v0, v47

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addPage(Landroid/app/Notification;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    goto :goto_3

    .line 531
    .end local v26    # "i$":Ljava/util/Iterator;
    .end local v37    # "page":Landroid/app/Notification;
    .end local v38    # "pageData":Landroid/os/Bundle;
    :cond_f
    const-string v4, "group_key"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 532
    .local v24, "groupKey":Ljava/lang/String;
    if-eqz v24, :cond_10

    .line 535
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->itemId:Lcom/google/android/clockwork/stream/StreamItemEntryId;

    iget-object v5, v5, Lcom/google/android/clockwork/stream/StreamItemEntryId;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 536
    .local v41, "qualifiedGroupKey":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 537
    const-string v4, "is_group_summary"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 538
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 542
    .end local v41    # "qualifiedGroupKey":Ljava/lang/String;
    :cond_10
    const-string v4, "sort_key"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSortKey(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 544
    const-string v4, "com.google.android.wearable.stream.CREATOR_NODE_ID"

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->creatorNodeId:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v4, "com.google.android.wearable.stream.REMOTE_PACKAGE_NAME"

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->itemId:Lcom/google/android/clockwork/stream/StreamItemEntryId;

    iget-object v5, v5, Lcom/google/android/clockwork/stream/StreamItemEntryId;->packageName:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const-string v4, "com.google.android.wearable.stream.REMOTE_STREAM_ITEM_ID"

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    if-eqz v30, :cond_12

    .line 551
    move-object/from16 v0, v30

    array-length v4, v0

    new-array v0, v4, [Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    .line 552
    .local v22, "decoded":[Ljava/lang/CharSequence;
    const/16 v25, 0x0

    .local v25, "i":I
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v36, v0

    .local v36, "n":I
    :goto_4
    move/from16 v0, v25

    move/from16 v1, v36

    if-ge v0, v1, :cond_11

    .line 553
    aget-object v4, v30, v25

    invoke-static {v4}, Lcom/google/android/clockwork/stream/bridger/CharSequenceUtil;->htmlToCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v22, v25

    .line 552
    add-int/lit8 v25, v25, 0x1

    goto :goto_4

    .line 555
    :cond_11
    const-string v4, "android.textLines"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 558
    .end local v22    # "decoded":[Ljava/lang/CharSequence;
    .end local v25    # "i":I
    .end local v36    # "n":I
    :cond_12
    const-string v4, "hint_hide_icon"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 559
    const/4 v4, 0x1

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setHintHideIcon(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 562
    :cond_13
    const-string v4, "hint_show_background_only"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 563
    const/4 v4, 0x1

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setHintShowBackgroundOnly(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 566
    :cond_14
    move-object/from16 v0, v18

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    return-object v4
.end method

.method public static notificationFromDataItem(Landroid/content/Context;Lcom/google/android/wearable/gmsclient/AssetManager;Lcom/google/android/gms/wearable/DataMapItem;)Landroid/app/Notification;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetManager"    # Lcom/google/android/wearable/gmsclient/AssetManager;
    .param p2, "dataItem"    # Lcom/google/android/gms/wearable/DataMapItem;

    .prologue
    .line 356
    invoke-virtual {p2}, Lcom/google/android/gms/wearable/DataMapItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->remoteStreamItemIdFromDataItemUri(Landroid/net/Uri;)Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;

    move-result-object v0

    .line 358
    .local v0, "remoteStreamItemId":Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;
    invoke-virtual {p2}, Lcom/google/android/gms/wearable/DataMapItem;->getDataMap()Lcom/google/android/gms/wearable/DataMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/DataMap;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, p1, v1, v0}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->notificationFromBundle(Landroid/content/Context;Lcom/google/android/wearable/gmsclient/AssetManager;Landroid/os/Bundle;Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;)Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method

.method private static remoteInputFromData(Landroid/os/Bundle;)Landroid/support/v4/app/RemoteInput;
    .locals 8
    .param p0, "data"    # Landroid/os/Bundle;

    .prologue
    .line 615
    const-string v7, "return_key"

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 616
    .local v6, "returnKey":Ljava/lang/String;
    const-string v7, "label_html"

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/clockwork/stream/bridger/CharSequenceUtil;->htmlToCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 617
    .local v5, "label":Ljava/lang/CharSequence;
    const-string v7, "allowFreeFormInput"

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 618
    .local v0, "allowFreeFormInput":Z
    new-instance v7, Landroid/support/v4/app/RemoteInput$Builder;

    invoke-direct {v7, v6}, Landroid/support/v4/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Landroid/support/v4/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/support/v4/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/support/v4/app/RemoteInput$Builder;

    move-result-object v1

    .line 621
    .local v1, "builder":Landroid/support/v4/app/RemoteInput$Builder;
    const-string v7, "choices_html"

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 622
    .local v3, "choicesHtml":[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 623
    array-length v7, v3

    new-array v2, v7, [Ljava/lang/CharSequence;

    .line 624
    .local v2, "choices":[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, v3

    if-ge v4, v7, :cond_0

    .line 625
    aget-object v7, v3, v4

    invoke-static {v7}, Lcom/google/android/clockwork/stream/bridger/CharSequenceUtil;->htmlToCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v2, v4

    .line 624
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 627
    :cond_0
    invoke-virtual {v1, v2}, Landroid/support/v4/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;

    .line 629
    .end local v2    # "choices":[Ljava/lang/CharSequence;
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/app/RemoteInput$Builder;->build()Landroid/support/v4/app/RemoteInput;

    move-result-object v7

    return-object v7
.end method

.method private static remoteInputToData(Ljava/lang/String;Landroid/support/v4/app/RemoteInput;)Lcom/google/android/gms/wearable/DataMap;
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "remoteInput"    # Landroid/support/v4/app/RemoteInput;

    .prologue
    .line 637
    invoke-virtual {p1}, Landroid/support/v4/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v4

    if-nez v4, :cond_1

    .line 639
    const-string v4, "StreamItemConverter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring remote input that has no choices and doesn\'t allow free form input, package="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", resultKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/support/v4/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const/4 v2, 0x0

    .line 660
    :goto_0
    return-object v2

    .line 644
    :cond_1
    new-instance v2, Lcom/google/android/gms/wearable/DataMap;

    invoke-direct {v2}, Lcom/google/android/gms/wearable/DataMap;-><init>()V

    .line 645
    .local v2, "data":Lcom/google/android/gms/wearable/DataMap;
    const-string v4, "return_key"

    invoke-virtual {p1}, Landroid/support/v4/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string v4, "label"

    const-string v5, "Dummy"

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const-string v4, "label_html"

    invoke-virtual {p1}, Landroid/support/v4/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/clockwork/stream/bridger/CharSequenceUtil;->charSequenceToHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    invoke-virtual {p1}, Landroid/support/v4/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 650
    .local v0, "choices":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_3

    .line 651
    array-length v4, v0

    new-array v1, v4, [Ljava/lang/String;

    .line 652
    .local v1, "choicesHtml":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 653
    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/google/android/clockwork/stream/bridger/CharSequenceUtil;->charSequenceToHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 652
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 655
    :cond_2
    const-string v4, "choices_html"

    invoke-virtual {v2, v4, v1}, Lcom/google/android/gms/wearable/DataMap;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 657
    const-string v4, "choices"

    sget-object v5, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->DUMMY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/wearable/DataMap;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 659
    .end local v1    # "choicesHtml":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_3
    const-string v4, "allowFreeFormInput"

    invoke-virtual {p1}, Landroid/support/v4/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/wearable/DataMap;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static remoteStreamItemIdFromDataItemUri(Landroid/net/Uri;)Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;
    .locals 1
    .param p0, "dataItemUri"    # Landroid/net/Uri;

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->fromKey(Ljava/lang/String;)Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;

    move-result-object v0

    return-object v0
.end method

.method public static remoteStreamItemIdFromStreamItem(Lcom/google/android/clockwork/stream/StreamItem;)Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;
    .locals 2
    .param p0, "streamItem"    # Lcom/google/android/clockwork/stream/StreamItem;

    .prologue
    .line 111
    invoke-interface {p0}, Lcom/google/android/clockwork/stream/StreamItem;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.android.wearable.stream.REMOTE_STREAM_ITEM_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->fromKey(Ljava/lang/String;)Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;

    move-result-object v0

    return-object v0
.end method
