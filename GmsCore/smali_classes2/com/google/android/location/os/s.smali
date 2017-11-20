.class public final Lcom/google/android/location/os/s;
.super Lcom/google/android/location/os/af;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/google/android/location/os/e;


# direct methods
.method public constructor <init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JLjava/lang/String;I)V
    .locals 1

    .prologue
    .line 431
    iput-object p1, p0, Lcom/google/android/location/os/s;->c:Lcom/google/android/location/os/e;

    iput-object p5, p0, Lcom/google/android/location/os/s;->a:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/location/os/s;->b:I

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/location/os/af;-><init>(Lcom/google/android/location/os/c;J)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/PrintWriter;)V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/google/android/location/os/s;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 435
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 436
    iget v0, p0, Lcom/google/android/location/os/s;->b:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 437
    return-void
.end method
