.class public final Lcom/google/android/location/os/f;
.super Lcom/google/android/location/os/af;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Lcom/google/android/location/os/e;


# direct methods
.method public constructor <init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JIIIZ)V
    .locals 1

    .prologue
    .line 230
    iput-object p1, p0, Lcom/google/android/location/os/f;->e:Lcom/google/android/location/os/e;

    iput p5, p0, Lcom/google/android/location/os/f;->a:I

    iput p6, p0, Lcom/google/android/location/os/f;->b:I

    iput p7, p0, Lcom/google/android/location/os/f;->c:I

    iput-boolean p8, p0, Lcom/google/android/location/os/f;->d:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/location/os/af;-><init>(Lcom/google/android/location/os/c;J)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/PrintWriter;)V
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/google/android/location/os/f;->a:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 234
    const-string v0, " low power period "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 235
    iget v0, p0, Lcom/google/android/location/os/f;->b:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 236
    const-string v0, " batch period "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 237
    iget v0, p0, Lcom/google/android/location/os/f;->c:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 238
    const-string v0, " trigger "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 239
    iget-boolean v0, p0, Lcom/google/android/location/os/f;->d:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 240
    return-void
.end method
