.class Lcom/android/keyguard/KeyguardSelectorView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSelectorView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSelectorView;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSelectorView$2;->this$0:Lcom/android/keyguard/KeyguardSelectorView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDevicePolicyManagerStateChanged()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView$2;->this$0:Lcom/android/keyguard/KeyguardSelectorView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSelectorView;->access$700(Lcom/android/keyguard/KeyguardSelectorView;)V

    .line 117
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView$2;->this$0:Lcom/android/keyguard/KeyguardSelectorView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSelectorView;->access$700(Lcom/android/keyguard/KeyguardSelectorView;)V

    .line 122
    return-void
.end method
