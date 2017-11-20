.class final Lcom/google/android/location/fused/bn;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/fused/bm;


# direct methods
.method constructor <init>(Lcom/google/android/location/fused/bm;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/location/fused/bn;->a:Lcom/google/android/location/fused/bm;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/location/fused/bn;->a:Lcom/google/android/location/fused/bm;

    invoke-virtual {v0}, Lcom/google/android/location/fused/bm;->c()V

    .line 55
    return-void
.end method
