.class Lcom/google/glass/settings/timezone/NewTimeZoneService$UpdateBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "NewTimeZoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/timezone/NewTimeZoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateBroadcastReceiver"
.end annotation


# static fields
.field private static final WIFI_UPDATE_DELAY_MS:J = 0x2710L


# instance fields
.field private lastWifiCheckTime:J

.field final synthetic this$0:Lcom/google/glass/settings/timezone/NewTimeZoneService;


# direct methods
.method private constructor <init>(Lcom/google/glass/settings/timezone/NewTimeZoneService;)V
    .locals 1

    .prologue
    .line 191
    iput-object p1, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService$UpdateBroadcastReceiver;->this$0:Lcom/google/glass/settings/timezone/NewTimeZoneService;

    .line 192
    invoke-static {}, Lcom/google/glass/settings/timezone/NewTimeZoneService;->access$400()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/settings/timezone/NewTimeZoneService;Lcom/google/glass/settings/timezone/NewTimeZoneService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/settings/timezone/NewTimeZoneService;
    .param p2, "x1"    # Lcom/google/glass/settings/timezone/NewTimeZoneService$1;

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/google/glass/settings/timezone/NewTimeZoneService$UpdateBroadcastReceiver;-><init>(Lcom/google/glass/settings/timezone/NewTimeZoneService;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 232
    invoke-static {}, Lcom/google/glass/settings/timezone/NewTimeZoneService;->access$600()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 197
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/glass/settings/timezone/NewTimeZoneService$UpdateBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v8

    const-string v9, "Broadcast received: %s"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v0, v10, v11

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    const-string v8, "com.google.glass.timezone.UPDATE_TIME_ZONE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "com.google.glass.timezone.COMPANION_UPDATE_TIME_ZONE"

    .line 200
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 201
    :cond_0
    const-string v8, "time_zone"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 202
    .local v7, "timeZone":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 203
    invoke-virtual {p0}, Lcom/google/glass/settings/timezone/NewTimeZoneService$UpdateBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v8

    const-string v9, "Time zone provided, updating to: %s"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v7, v10, v11

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    const-string v8, "priority"

    .line 205
    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 206
    .local v4, "priority":I
    iget-object v8, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService$UpdateBroadcastReceiver;->this$0:Lcom/google/glass/settings/timezone/NewTimeZoneService;

    invoke-static {v8, v7, v4}, Lcom/google/glass/settings/timezone/NewTimeZoneService;->access$300(Lcom/google/glass/settings/timezone/NewTimeZoneService;Ljava/lang/String;I)V

    .line 228
    .end local v4    # "priority":I
    .end local v7    # "timeZone":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 208
    .restart local v7    # "timeZone":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/settings/timezone/NewTimeZoneService$UpdateBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v8

    const-string v9, "No time zone provided."

    new-array v10, v11, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    iget-object v8, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService$UpdateBroadcastReceiver;->this$0:Lcom/google/glass/settings/timezone/NewTimeZoneService;

    invoke-static {v8}, Lcom/google/glass/settings/timezone/NewTimeZoneService;->access$500(Lcom/google/glass/settings/timezone/NewTimeZoneService;)V

    goto :goto_0

    .line 211
    .end local v7    # "timeZone":Ljava/lang/String;
    :cond_3
    const-string v8, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 212
    const-string v8, "networkInfo"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 213
    .local v3, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 214
    invoke-virtual {p0}, Lcom/google/glass/settings/timezone/NewTimeZoneService$UpdateBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v8

    const-string v9, "Network is connected checking if outside wifi delay window."

    new-array v10, v11, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 216
    .local v1, "currentTime":J
    iget-wide v8, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService$UpdateBroadcastReceiver;->lastWifiCheckTime:J

    sub-long v5, v1, v8

    .line 217
    .local v5, "timeDelta":J
    const-wide/16 v8, 0x2710

    cmp-long v8, v5, v8

    if-lez v8, :cond_4

    .line 218
    invoke-virtual {p0}, Lcom/google/glass/settings/timezone/NewTimeZoneService$UpdateBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v8

    const-string v9, "Last update was outside delay window, updating the time zone now."

    new-array v10, v11, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    iget-object v8, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService$UpdateBroadcastReceiver;->this$0:Lcom/google/glass/settings/timezone/NewTimeZoneService;

    invoke-static {v8}, Lcom/google/glass/settings/timezone/NewTimeZoneService;->access$500(Lcom/google/glass/settings/timezone/NewTimeZoneService;)V

    .line 223
    :goto_1
    iput-wide v1, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService$UpdateBroadcastReceiver;->lastWifiCheckTime:J

    goto :goto_0

    .line 221
    :cond_4
    invoke-virtual {p0}, Lcom/google/glass/settings/timezone/NewTimeZoneService$UpdateBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v8

    const-string v9, "Last update was inside delay window, not updating."

    new-array v10, v11, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 225
    .end local v1    # "currentTime":J
    .end local v5    # "timeDelta":J
    :cond_5
    invoke-virtual {p0}, Lcom/google/glass/settings/timezone/NewTimeZoneService$UpdateBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v8

    const-string v9, "Network not connected, not updating."

    new-array v10, v11, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
