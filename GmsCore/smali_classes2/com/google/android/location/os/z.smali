.class public final Lcom/google/android/location/os/z;
.super Lcom/google/android/location/os/af;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Lcom/google/android/location/os/e;


# direct methods
.method public constructor <init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JIIZ)V
    .locals 1

    .prologue
    .line 263
    iput-object p1, p0, Lcom/google/android/location/os/z;->d:Lcom/google/android/location/os/e;

    iput p5, p0, Lcom/google/android/location/os/z;->a:I

    iput p6, p0, Lcom/google/android/location/os/z;->b:I

    iput-boolean p7, p0, Lcom/google/android/location/os/z;->c:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/location/os/af;-><init>(Lcom/google/android/location/os/c;J)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/PrintWriter;)V
    .locals 1

    .prologue
    .line 266
    const-string v0, "scale "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    iget v0, p0, Lcom/google/android/location/os/z;->a:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 268
    const-string v0, " level "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    iget v0, p0, Lcom/google/android/location/os/z;->b:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 270
    const-string v0, " plugged "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 271
    iget-boolean v0, p0, Lcom/google/android/location/os/z;->c:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 272
    return-void
.end method
