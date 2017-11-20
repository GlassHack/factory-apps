.class public Lcom/google/android/gsf/gtalkservice/Endpoint$SpecialConnectionEvent;
.super Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;
.source "Endpoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/Endpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpecialConnectionEvent"
.end annotation


# instance fields
.field private mEventType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "eventType"    # I

    .prologue
    .line 1630
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;-><init>()V

    .line 1631
    iput p1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$SpecialConnectionEvent;->mEventType:I

    .line 1632
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;

    .prologue
    .line 1636
    invoke-super {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;->dump(Ljava/io/PrintWriter;)V

    .line 1638
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$SpecialConnectionEvent;->mEventType:I

    packed-switch v0, :pswitch_data_0

    .line 1659
    :goto_0
    return-void

    .line 1640
    :pswitch_0
    const-string v0, "HEARTBEAT TIMEOUT"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1644
    :pswitch_1
    const-string v0, "IM LOGIN"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1648
    :pswitch_2
    const-string v0, "IM LOGOUT"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1652
    :pswitch_3
    const-string v0, "LOGIN"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1656
    :pswitch_4
    const-string v0, "LOGOUT"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1638
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
