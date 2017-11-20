.class public Lcom/google/android/apps/lightcycle/calibration/CalibrationPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "CalibrationPreferenceActivity.java"


# static fields
.field public static final OPTION_MARKER_DISTANCE:Ljava/lang/String; = "markerDistance"

.field public static final OPTION_TARGET_DISTANCE:Ljava/lang/String; = "targetDistanceCm"


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
    .line 21
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    sget v0, Lcom/google/android/apps/lightcycle/R$xml;->calibration_preferences:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/calibration/CalibrationPreferenceActivity;->addPreferencesFromResource(I)V

    .line 23
    return-void
.end method
