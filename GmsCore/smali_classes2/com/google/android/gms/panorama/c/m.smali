.class final Lcom/google/android/gms/panorama/c/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/panorama/f/a;


# instance fields
.field final synthetic a:Lcom/google/android/gms/panorama/c/l;


# direct methods
.method constructor <init>(Lcom/google/android/gms/panorama/c/l;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/gms/panorama/c/m;->a:Lcom/google/android/gms/panorama/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 51
    check-cast p1, Ljava/lang/Void;

    iget-object v0, p0, Lcom/google/android/gms/panorama/c/m;->a:Lcom/google/android/gms/panorama/c/l;

    iget-object v0, v0, Lcom/google/android/gms/panorama/c/l;->f:Lcom/google/android/gms/panorama/f/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/panorama/c/m;->a:Lcom/google/android/gms/panorama/c/l;

    iget-object v0, v0, Lcom/google/android/gms/panorama/c/l;->f:Lcom/google/android/gms/panorama/f/a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/panorama/f/a;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
