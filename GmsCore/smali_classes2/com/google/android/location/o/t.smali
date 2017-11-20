.class final Lcom/google/android/location/o/t;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/o/s;


# direct methods
.method constructor <init>(Lcom/google/android/location/o/s;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/android/location/o/t;->a:Lcom/google/android/location/o/s;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/location/o/t;->a:Lcom/google/android/location/o/s;

    iget-object v1, p0, Lcom/google/android/location/o/t;->a:Lcom/google/android/location/o/s;

    invoke-static {v1}, Lcom/google/android/location/o/s;->a(Lcom/google/android/location/o/s;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/location/o/s;->a(Lcom/google/android/location/o/s;F)V

    .line 131
    return-void
.end method
