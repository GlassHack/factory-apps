.class Lcom/android/systemui/statusbar/phone/NavigationBarView$3$1;
.super Ljava/lang/Object;
.source "NavigationBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarView$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/NavigationBarView$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView$3;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$3$1;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$3$1;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarView$3;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$3$1;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarView$3;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$400(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$302(Lcom/android/systemui/statusbar/phone/NavigationBarView;Z)Z

    .line 227
    return-void
.end method
