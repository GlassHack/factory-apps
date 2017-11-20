.class Lcom/google/glass/ongoing/OngoingActivityManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/google/glass/ongoing/OngoingActivityManager;


# direct methods
.method constructor <init>(Lcom/google/glass/ongoing/OngoingActivityManager;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/glass/ongoing/OngoingActivityManager$2;->this$0:Lcom/google/glass/ongoing/OngoingActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager$2;->this$0:Lcom/google/glass/ongoing/OngoingActivityManager;

    invoke-static {v0, p1, p2}, Lcom/google/glass/ongoing/OngoingActivityManager;->access$100(Lcom/google/glass/ongoing/OngoingActivityManager;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 112
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager$2;->this$0:Lcom/google/glass/ongoing/OngoingActivityManager;

    invoke-static {v0}, Lcom/google/glass/ongoing/OngoingActivityManager;->access$000(Lcom/google/glass/ongoing/OngoingActivityManager;)V

    .line 108
    return-void
.end method
