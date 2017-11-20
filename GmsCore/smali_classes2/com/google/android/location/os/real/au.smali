.class final Lcom/google/android/location/os/real/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/k/g;


# instance fields
.field final synthetic a:Lcom/google/android/location/os/real/at;

.field private final b:Lcom/google/android/location/k/g;

.field private final c:Lcom/google/android/location/os/c;


# direct methods
.method constructor <init>(Lcom/google/android/location/os/real/at;Lcom/google/android/location/k/g;Lcom/google/android/location/os/c;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/location/os/real/au;->a:Lcom/google/android/location/os/real/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p2, p0, Lcom/google/android/location/os/real/au;->b:Lcom/google/android/location/k/g;

    .line 61
    iput-object p3, p0, Lcom/google/android/location/os/real/au;->c:Lcom/google/android/location/os/c;

    .line 62
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/location/k/b;Lcom/google/g/a/b/b/a;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/location/os/real/au;->a:Lcom/google/android/location/os/real/at;

    iget-object v0, v0, Lcom/google/android/location/os/real/at;->a:Lcom/google/android/location/os/e;

    iget-object v1, p0, Lcom/google/android/location/os/real/au;->c:Lcom/google/android/location/os/c;

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/c;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/location/os/real/au;->b:Lcom/google/android/location/k/g;

    invoke-interface {v0, p1, p2}, Lcom/google/android/location/k/g;->a(Lcom/google/android/location/k/b;Lcom/google/g/a/b/b/a;)V

    .line 69
    return-void
.end method
