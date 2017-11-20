.class public final Lcom/google/maps/api/android/lib6/c/bf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/c/bg;


# instance fields
.field private synthetic a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/c/bf;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)Lcom/google/maps/api/android/lib6/c/bh;
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/bf;->a:Z

    invoke-static {p1, p2}, Lcom/google/maps/api/android/lib6/c/bh;->a(Landroid/view/LayoutInflater;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)Lcom/google/maps/api/android/lib6/c/bh;

    move-result-object v0

    return-object v0
.end method
