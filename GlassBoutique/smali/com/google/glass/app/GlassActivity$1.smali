.class Lcom/google/glass/app/GlassActivity$1;
.super Lcom/google/android/glass/widget/CardScrollView;
.source "GlassActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/app/GlassActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/app/GlassActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/app/GlassActivity;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/glass/app/GlassActivity$1;->this$0:Lcom/google/glass/app/GlassActivity;

    invoke-direct {p0, p2}, Lcom/google/android/glass/widget/CardScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/google/android/glass/widget/CardScrollView;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    .line 111
    const/4 v0, 0x0

    return v0
.end method
