.class public final Lcom/google/maps/api/android/lib6/c/cu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/b/p;


# instance fields
.field public a:Landroid/content/SharedPreferences;

.field public b:Lcom/google/maps/api/android/lib6/c/cv;

.field public c:Lcom/google/maps/api/android/lib6/c/dm;

.field private d:J


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/c/dm;Landroid/content/SharedPreferences;Lcom/google/maps/api/android/lib6/c/cv;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/c/cu;->d:J

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/cu;->c:Lcom/google/maps/api/android/lib6/c/dm;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/c/cu;->a:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/c/cu;->b:Lcom/google/maps/api/android/lib6/c/cv;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(IZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/b/g;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/maps/api/android/lib6/b/g;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/c/cu;->d:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/cu;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "LAST_FETCH_PERSISTENT_TAG"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/c/cu;->d:J

    :cond_0
    return-void
.end method
