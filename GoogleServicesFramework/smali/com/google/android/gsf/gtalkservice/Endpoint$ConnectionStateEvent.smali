.class Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionStateEvent;
.super Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;
.source "Endpoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/Endpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionStateEvent"
.end annotation


# instance fields
.field protected mState:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1508
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;-><init>()V

    .line 1509
    iput p1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionStateEvent;->mState:I

    .line 1510
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;

    .prologue
    .line 1514
    invoke-super {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;->dump(Ljava/io/PrintWriter;)V

    .line 1515
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionStateEvent;->mState:I

    invoke-static {v0}, Lcom/google/android/gtalkservice/ConnectionState;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1516
    return-void
.end method
