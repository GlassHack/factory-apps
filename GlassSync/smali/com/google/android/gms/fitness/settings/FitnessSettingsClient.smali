.class public Lcom/google/android/gms/fitness/settings/FitnessSettingsClient;
.super Ljava/lang/Object;


# static fields
.field public static final DELETE_HISTORY:Ljava/lang/String; = "com.google.android.gms.fitness.settings.DELETE_HISTORY"

.field public static final EXTRA_ACCOUNT:Ljava/lang/String; = "EXTRA_ACCOUNT"

.field public static final GOOGLE_FITNESS_SETTINGS:Ljava/lang/String; = "com.google.android.gms.fitness.settings.GOOGLE_FITNESS_SETTINGS"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/fitness/settings/FitnessSettingsClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/settings/FitnessSettingsClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_ACCOUNT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static launchDeleteHistory(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    const-string v0, "com.google.android.gms.fitness.settings.DELETE_HISTORY"

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/fitness/settings/FitnessSettingsClient;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static launchGoogleFitnessSettings(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    const-string v0, "com.google.android.gms.fitness.settings.GOOGLE_FITNESS_SETTINGS"

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/fitness/settings/FitnessSettingsClient;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
