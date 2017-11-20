.class Lcom/android/keyguard/KeyguardHostView$5;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .locals 0

    .prologue
    .line 890
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$5;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 0
    .param p1, "securityVerified"    # Z

    .prologue
    .line 924
    return-void
.end method

.method public getFailedAttempts()I
    .locals 1

    .prologue
    .line 919
    const/4 v0, 0x0

    return v0
.end method

.method public isVerifyUnlockOnly()Z
    .locals 1

    .prologue
    .line 914
    const/4 v0, 0x0

    return v0
.end method

.method public reportFailedUnlockAttempt()V
    .locals 0

    .prologue
    .line 910
    return-void
.end method

.method public reportSuccessfulUnlockAttempt()V
    .locals 0

    .prologue
    .line 906
    return-void
.end method

.method public setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V
    .locals 0
    .param p1, "action"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .prologue
    .line 902
    return-void
.end method

.method public showBackupSecurity()V
    .locals 0

    .prologue
    .line 898
    return-void
.end method

.method public userActivity(J)V
    .locals 0
    .param p1, "timeout"    # J

    .prologue
    .line 894
    return-void
.end method
