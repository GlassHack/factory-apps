.class Lcom/google/glass/navlib/NavigationImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/navlib/NavigationImpl;

.field final synthetic val$appName:Ljava/lang/String;

.field final synthetic val$locationSource:Lcom/google/android/maps/driveabout/location/t;


# direct methods
.method constructor <init>(Lcom/google/glass/navlib/NavigationImpl;Ljava/lang/String;Lcom/google/android/maps/driveabout/location/t;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/glass/navlib/NavigationImpl$1;->this$0:Lcom/google/glass/navlib/NavigationImpl;

    iput-object p2, p0, Lcom/google/glass/navlib/NavigationImpl$1;->val$appName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/glass/navlib/NavigationImpl$1;->val$locationSource:Lcom/google/android/maps/driveabout/location/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl$1;->this$0:Lcom/google/glass/navlib/NavigationImpl;

    iget-object v1, p0, Lcom/google/glass/navlib/NavigationImpl$1;->val$appName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/navlib/NavigationImpl$1;->val$locationSource:Lcom/google/android/maps/driveabout/location/t;

    invoke-static {v0, v1, v2}, Lcom/google/glass/navlib/NavigationImpl;->access$000(Lcom/google/glass/navlib/NavigationImpl;Ljava/lang/String;Lcom/google/android/maps/driveabout/location/t;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl$1;->this$0:Lcom/google/glass/navlib/NavigationImpl;

    invoke-static {v0}, Lcom/google/glass/navlib/NavigationImpl;->access$100(Lcom/google/glass/navlib/NavigationImpl;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 127
    return-void

    .line 125
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/navlib/NavigationImpl$1;->this$0:Lcom/google/glass/navlib/NavigationImpl;

    invoke-static {v1}, Lcom/google/glass/navlib/NavigationImpl;->access$100(Lcom/google/glass/navlib/NavigationImpl;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
