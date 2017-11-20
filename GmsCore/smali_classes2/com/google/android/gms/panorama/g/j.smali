.class final Lcom/google/android/gms/panorama/g/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/panorama/f/a;


# instance fields
.field final synthetic a:Lcom/google/android/gms/panorama/g/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/panorama/g/i;)V
    .locals 0

    .prologue
    .line 665
    iput-object p1, p0, Lcom/google/android/gms/panorama/g/j;->a:Lcom/google/android/gms/panorama/g/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/j;->a:Lcom/google/android/gms/panorama/g/i;

    invoke-static {v0}, Lcom/google/android/gms/panorama/g/i;->a(Lcom/google/android/gms/panorama/g/i;)Lcom/google/android/gms/panorama/g/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/panorama/g/f;->requestRender()V

    return-void
.end method
