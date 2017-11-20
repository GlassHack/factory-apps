.class final Lcom/google/maps/api/android/lib6/c/ch;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private volatile a:Z

.field private synthetic b:Lcom/google/maps/api/android/lib6/c/ce;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/c/ce;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/ch;->b:Lcom/google/maps/api/android/lib6/c/ce;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ch;->a:Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ch;->b:Lcom/google/maps/api/android/lib6/c/ce;

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/c/ce;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ch;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ch;->b:Lcom/google/maps/api/android/lib6/c/ce;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/ce;->a(Lcom/google/maps/api/android/lib6/c/ce;)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ch;->a:Z

    :cond_0
    return-void
.end method
