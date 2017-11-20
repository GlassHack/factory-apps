.class final Lcom/google/android/location/geofencer/service/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/i/f;


# instance fields
.field final synthetic a:Lcom/google/android/location/geofencer/service/k;

.field final synthetic b:Lcom/google/android/location/geofencer/service/i;


# direct methods
.method constructor <init>(Lcom/google/android/location/geofencer/service/i;Lcom/google/android/location/geofencer/service/k;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/android/location/geofencer/service/j;->b:Lcom/google/android/location/geofencer/service/i;

    iput-object p2, p0, Lcom/google/android/location/geofencer/service/j;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/j;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/service/k;->g()V

    .line 164
    return-void
.end method

.method public final a(Lcom/google/android/location/i/e;Lcom/google/android/location/i/e;)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/j;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/geofencer/service/k;->a(Lcom/google/android/location/i/e;Lcom/google/android/location/i/e;)V

    .line 169
    return-void
.end method
