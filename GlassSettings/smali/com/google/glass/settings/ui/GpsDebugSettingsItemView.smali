.class public Lcom/google/glass/settings/ui/GpsDebugSettingsItemView;
.super Lcom/google/glass/settings/ui/SettingsCard;
.source "GpsDebugSettingsItemView.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final locationListener:Landroid/location/LocationListener;

.field private final locationManager:Landroid/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/GpsDebugSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/settings/ui/GpsDebugSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/settings/ui/GpsDebugSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/settings/ui/SettingsCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance v0, Lcom/google/glass/settings/ui/GpsDebugSettingsItemView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/GpsDebugSettingsItemView$1;-><init>(Lcom/google/glass/settings/ui/GpsDebugSettingsItemView;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/GpsDebugSettingsItemView;->locationListener:Landroid/location/LocationListener;

    .line 54
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/google/glass/settings/ui/GpsDebugSettingsItemView;->locationManager:Landroid/location/LocationManager;

    .line 55
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/glass/settings/ui/GpsDebugSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 59
    invoke-super {p0}, Lcom/google/glass/settings/ui/SettingsCard;->onAttachedToWindow()V

    .line 60
    sget-object v0, Lcom/google/glass/settings/ui/GpsDebugSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Requesting location updates."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/google/glass/settings/ui/GpsDebugSettingsItemView;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/settings/ui/GpsDebugSettingsItemView;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 63
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 67
    invoke-super {p0}, Lcom/google/glass/settings/ui/SettingsCard;->onDetachedFromWindow()V

    .line 68
    sget-object v0, Lcom/google/glass/settings/ui/GpsDebugSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Removing location updates."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/google/glass/settings/ui/GpsDebugSettingsItemView;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/glass/settings/ui/GpsDebugSettingsItemView;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 70
    return-void
.end method
