.class public final Lcom/google/android/gms/maps/e;
.super Lcom/google/android/gms/maps/internal/ab;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/h;

.field final synthetic b:Lcom/google/android/gms/maps/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/h;)V
    .locals 0

    .prologue
    .line 997
    iput-object p1, p0, Lcom/google/android/gms/maps/e;->b:Lcom/google/android/gms/maps/c;

    iput-object p2, p0, Lcom/google/android/gms/maps/e;->a:Lcom/google/android/gms/maps/h;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/ab;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/maps/e;->a:Lcom/google/android/gms/maps/h;

    invoke-interface {v0}, Lcom/google/android/gms/maps/h;->a()V

    .line 1001
    return-void
.end method
