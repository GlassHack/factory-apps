.class final Lcom/google/android/location/fused/y;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/ContentResolver;

.field final synthetic b:Lcom/google/android/location/fused/w;


# direct methods
.method constructor <init>(Lcom/google/android/location/fused/w;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/google/android/location/fused/y;->b:Lcom/google/android/location/fused/w;

    iput-object p3, p0, Lcom/google/android/location/fused/y;->a:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/location/fused/y;->b:Lcom/google/android/location/fused/w;

    iget-object v1, p0, Lcom/google/android/location/fused/y;->a:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/google/android/location/fused/w;->a(Landroid/content/ContentResolver;)V

    .line 237
    return-void
.end method
