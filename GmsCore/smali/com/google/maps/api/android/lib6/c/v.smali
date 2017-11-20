.class public final Lcom/google/maps/api/android/lib6/c/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/c/w;


# instance fields
.field private synthetic a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/c/v;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Lcom/google/android/gms/maps/GoogleMapOptions;)Lcom/google/maps/api/android/lib6/c/dw;
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/v;->a:Z

    invoke-static {p1, p2, v0}, Lcom/google/maps/api/android/lib6/c/dw;->a(Landroid/view/LayoutInflater;Lcom/google/android/gms/maps/GoogleMapOptions;Z)Lcom/google/maps/api/android/lib6/c/dw;

    move-result-object v0

    return-object v0
.end method
