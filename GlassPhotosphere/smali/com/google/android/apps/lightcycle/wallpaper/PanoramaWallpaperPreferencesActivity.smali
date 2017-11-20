.class public Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperPreferencesActivity;
.super Landroid/preference/PreferenceActivity;
.source "PanoramaWallpaperPreferencesActivity.java"


# static fields
.field public static final OPTION_ENABLE_COMPASS_MODE:Ljava/lang/String; = "enableCompassMode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    sget v0, Lcom/google/android/apps/lightcycle/R$xml;->wallpaper_preferences:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperPreferencesActivity;->addPreferencesFromResource(I)V

    .line 22
    return-void
.end method
