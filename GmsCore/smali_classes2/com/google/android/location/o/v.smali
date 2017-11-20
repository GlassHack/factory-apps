.class final Lcom/google/android/location/o/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/location/l;


# instance fields
.field final synthetic a:Lcom/google/android/location/o/u;


# direct methods
.method constructor <init>(Lcom/google/android/location/o/u;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/location/o/v;->a:Lcom/google/android/location/o/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 6

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/location/o/v;->a:Lcom/google/android/location/o/u;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/google/android/location/o/u;->b:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/location/o/u;->a:Lcom/google/android/gms/location/l;

    invoke-interface {v1, p1}, Lcom/google/android/gms/location/l;->a(Landroid/location/Location;)V

    iput-wide v2, v0, Lcom/google/android/location/o/u;->b:J

    .line 54
    :cond_0
    return-void
.end method
