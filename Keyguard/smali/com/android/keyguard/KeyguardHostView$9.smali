.class Lcom/android/keyguard/KeyguardHostView$9;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardHostView;->getOrCreateTransportControl()Lcom/android/keyguard/KeyguardTransportControlView;
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
    .line 1243
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$9;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public userActivity()V
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$9;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->userActivity()V

    .line 1246
    return-void
.end method
