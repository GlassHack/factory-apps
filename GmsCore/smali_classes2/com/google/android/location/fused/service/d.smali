.class final Lcom/google/android/location/fused/service/d;
.super Lcom/android/location/provider/FusedLocationHardwareSink;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/fused/service/c;


# direct methods
.method constructor <init>(Lcom/google/android/location/fused/service/c;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/android/location/fused/service/d;->a:Lcom/google/android/location/fused/service/c;

    invoke-direct {p0}, Lcom/android/location/provider/FusedLocationHardwareSink;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDiagnosticDataAvailable(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/location/fused/service/d;->a:Lcom/google/android/location/fused/service/c;

    invoke-static {v0}, Lcom/google/android/location/fused/service/c;->a(Lcom/google/android/location/fused/service/c;)Lcom/google/android/location/fused/service/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/google/android/location/fused/service/d;->a:Lcom/google/android/location/fused/service/c;

    invoke-static {v0}, Lcom/google/android/location/fused/service/c;->a(Lcom/google/android/location/fused/service/c;)Lcom/google/android/location/fused/service/b;

    .line 33
    :cond_0
    return-void
.end method

.method public final onLocationAvailable([Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/location/fused/service/d;->a:Lcom/google/android/location/fused/service/c;

    invoke-static {v0}, Lcom/google/android/location/fused/service/c;->a(Lcom/google/android/location/fused/service/c;)Lcom/google/android/location/fused/service/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/google/android/location/fused/service/d;->a:Lcom/google/android/location/fused/service/c;

    invoke-static {v0}, Lcom/google/android/location/fused/service/c;->a(Lcom/google/android/location/fused/service/c;)Lcom/google/android/location/fused/service/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/location/fused/service/b;->a([Landroid/location/Location;)V

    .line 26
    :cond_0
    return-void
.end method
