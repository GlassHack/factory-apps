.class final Lcom/google/android/location/geofencer/service/l;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/geofencer/service/k;


# direct methods
.method constructor <init>(Lcom/google/android/location/geofencer/service/k;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/google/android/location/geofencer/service/l;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/l;->a:Lcom/google/android/location/geofencer/service/k;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/service/k;->f()V

    .line 272
    return-void
.end method
