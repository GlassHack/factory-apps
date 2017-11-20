.class final Lcom/google/maps/api/android/lib6/c/f;
.super Landroid/content/ContextWrapper;


# instance fields
.field private synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/c/f;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final getApplicationContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/g;->a()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/f;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public final unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/f;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method
