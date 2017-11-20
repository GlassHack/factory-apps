.class public Lcom/google/glass/location/LocationDelivery;
.super Ljava/lang/Object;
.source "LocationDelivery.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/location/LocationDelivery;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deliver(Lcom/google/glass/companion/Proto$LocationMessage;Landroid/location/LocationListener;)V
    .locals 4
    .param p0, "message"    # Lcom/google/glass/companion/Proto$LocationMessage;
    .param p1, "listener"    # Landroid/location/LocationListener;

    .prologue
    const/4 v3, 0x0

    .line 16
    if-nez p1, :cond_0

    .line 17
    sget-object v1, Lcom/google/glass/location/LocationDelivery;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Dropping location message because we have no location listener."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    :goto_0
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    .line 22
    .local v0, "provider":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23
    sget-object v1, Lcom/google/glass/location/LocationDelivery;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Dropping location message because it has no provider."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 27
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 29
    :pswitch_0
    invoke-static {p0}, Lcom/google/glass/util/proto/LocationMessageUtils;->toAndroidLocation(Lcom/google/glass/companion/Proto$LocationMessage;)Landroid/location/Location;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0

    .line 33
    :pswitch_1
    invoke-interface {p1, v0}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :pswitch_2
    invoke-interface {p1, v0}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->getStatus()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
