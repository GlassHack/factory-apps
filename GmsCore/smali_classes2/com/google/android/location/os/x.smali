.class final Lcom/google/android/location/os/x;
.super Lcom/google/android/location/os/af;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/location/os/e;


# direct methods
.method constructor <init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 481
    iput-object p1, p0, Lcom/google/android/location/os/x;->c:Lcom/google/android/location/os/e;

    iput-object p5, p0, Lcom/google/android/location/os/x;->a:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/location/os/x;->b:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/location/os/af;-><init>(Lcom/google/android/location/os/c;J)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/PrintWriter;)V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/google/android/location/os/x;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 485
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 486
    iget-object v0, p0, Lcom/google/android/location/os/x;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 487
    return-void
.end method
