.class public final Lcom/google/android/location/os/o;
.super Lcom/google/android/location/os/af;
.source "SourceFile"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/location/os/e;


# direct methods
.method public constructor <init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JZ)V
    .locals 1

    .prologue
    .line 404
    iput-object p1, p0, Lcom/google/android/location/os/o;->b:Lcom/google/android/location/os/e;

    iput-boolean p5, p0, Lcom/google/android/location/os/o;->a:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/location/os/af;-><init>(Lcom/google/android/location/os/c;J)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/PrintWriter;)V
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/google/android/location/os/o;->a:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 408
    return-void
.end method
