.class final Lcom/google/android/location/os/ae;
.super Lcom/google/android/location/os/af;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/os/ah;

.field final synthetic b:Lcom/google/android/location/os/e;


# direct methods
.method constructor <init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JLcom/google/android/location/os/ah;)V
    .locals 1

    .prologue
    .line 315
    iput-object p1, p0, Lcom/google/android/location/os/ae;->b:Lcom/google/android/location/os/e;

    iput-object p5, p0, Lcom/google/android/location/os/ae;->a:Lcom/google/android/location/os/ah;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/location/os/af;-><init>(Lcom/google/android/location/os/c;J)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/PrintWriter;)V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/location/os/ae;->a:Lcom/google/android/location/os/ah;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 319
    return-void
.end method
