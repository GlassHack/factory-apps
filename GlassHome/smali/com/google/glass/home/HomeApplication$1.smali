.class Lcom/google/glass/home/HomeApplication$1;
.super Ljava/lang/Object;
.source "HomeApplication.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/HomeApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/HomeApplication;


# direct methods
.method constructor <init>(Lcom/google/glass/home/HomeApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/HomeApplication;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/glass/home/HomeApplication$1;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$1;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-static {v0}, Lcom/google/glass/home/HomeApplication;->access$000(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Connected to %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/glass/location/LocationService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$1;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-static {}, Lcom/google/glass/location/LocationService;->getRunningInstance()Lcom/google/glass/location/LocationService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/home/HomeApplication;->access$102(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/location/LocationService;)Lcom/google/glass/location/LocationService;

    .line 129
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$1;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-static {v0}, Lcom/google/glass/home/HomeApplication;->access$100(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/location/LocationService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/HomeApplication$1;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-static {v1}, Lcom/google/glass/home/HomeApplication;->access$200(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/location/CompanionLocationProxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/location/LocationService;->setLocationProxy(Lcom/google/glass/location/LocationProxy;)V

    .line 131
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$1;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-static {v0}, Lcom/google/glass/home/HomeApplication;->access$000(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Disconnected from %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/glass/location/LocationService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$1;->this$0:Lcom/google/glass/home/HomeApplication;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/home/HomeApplication;->access$102(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/location/LocationService;)Lcom/google/glass/location/LocationService;

    .line 122
    :cond_0
    return-void
.end method
