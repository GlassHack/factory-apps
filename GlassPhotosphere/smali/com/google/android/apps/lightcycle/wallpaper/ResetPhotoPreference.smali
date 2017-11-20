.class public Lcom/google/android/apps/lightcycle/wallpaper/ResetPhotoPreference;
.super Landroid/preference/Preference;
.source "ResetPhotoPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 2

    .prologue
    .line 24
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 25
    new-instance v0, Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;

    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/wallpaper/ResetPhotoPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;->switchToDemoFile()V

    .line 26
    return-void
.end method
