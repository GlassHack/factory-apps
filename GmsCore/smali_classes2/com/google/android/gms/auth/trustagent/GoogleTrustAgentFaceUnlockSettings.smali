.class public Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFaceUnlockSettings;
.super Lcom/google/android/gms/auth/trustagent/aq;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/aq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final e()Landroid/preference/PreferenceFragment;
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/google/android/gms/auth/trustagent/f;

    invoke-direct {v0}, Lcom/google/android/gms/auth/trustagent/f;-><init>()V

    return-object v0
.end method
