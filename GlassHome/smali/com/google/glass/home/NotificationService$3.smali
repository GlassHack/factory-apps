.class Lcom/google/glass/home/NotificationService$3;
.super Ljava/lang/Object;
.source "NotificationService.java"

# interfaces
.implements Lcom/google/android/glass/head/HeadGestureManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/NotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/NotificationService;


# direct methods
.method constructor <init>(Lcom/google/glass/home/NotificationService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/NotificationService;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/glass/home/NotificationService$3;->this$0:Lcom/google/glass/home/NotificationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetected(Lcom/google/android/glass/head/HeadGesture;J)V
    .locals 2
    .param p1, "gesture"    # Lcom/google/android/glass/head/HeadGesture;
    .param p2, "timestampMillis"    # J

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/glass/home/NotificationService$3;->this$0:Lcom/google/glass/home/NotificationService;

    const-string v1, "10"

    invoke-static {v0, v1}, Lcom/google/glass/home/NotificationService;->access$100(Lcom/google/glass/home/NotificationService;Ljava/lang/String;)Z

    .line 116
    return-void
.end method
