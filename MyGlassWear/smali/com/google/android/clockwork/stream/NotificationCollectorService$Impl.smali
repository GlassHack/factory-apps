.class interface abstract Lcom/google/android/clockwork/stream/NotificationCollectorService$Impl;
.super Ljava/lang/Object;
.source "NotificationCollectorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/clockwork/stream/NotificationCollectorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Impl"
.end annotation


# virtual methods
.method public abstract getActiveNotifications(Landroid/service/notification/NotificationListenerService;[Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract getSupportsListenerConnectedApi()Z
.end method
