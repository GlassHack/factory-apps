.class public final Lcom/google/android/gms/maps/f;
.super Lcom/google/android/gms/maps/internal/an;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/i;

.field final synthetic b:Lcom/google/android/gms/maps/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/i;)V
    .locals 0

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/google/android/gms/maps/f;->b:Lcom/google/android/gms/maps/c;

    iput-object p2, p0, Lcom/google/android/gms/maps/f;->a:Lcom/google/android/gms/maps/i;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/an;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/google/android/gms/maps/f;->a:Lcom/google/android/gms/maps/i;

    invoke-interface {v0}, Lcom/google/android/gms/maps/i;->r_()V

    .line 1025
    return-void
.end method
