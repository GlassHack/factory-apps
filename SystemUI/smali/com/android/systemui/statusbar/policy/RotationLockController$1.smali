.class Lcom/android/systemui/statusbar/policy/RotationLockController$1;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "RotationLockController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/RotationLockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/RotationLockController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/RotationLockController;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RotationLockController$1;->this$0:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockController$1;->this$0:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->access$000(Lcom/android/systemui/statusbar/policy/RotationLockController;)V

    .line 36
    return-void
.end method
