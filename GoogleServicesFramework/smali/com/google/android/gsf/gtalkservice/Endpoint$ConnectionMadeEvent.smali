.class Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionMadeEvent;
.super Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionStateEvent;
.source "Endpoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/Endpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionMadeEvent"
.end annotation


# instance fields
.field private mHostIpAddress:Ljava/lang/String;

.field private mPresenceIsAvailable:Z

.field private mPresenceIsInvisible:Z

.field private mPresenceShow:I


# direct methods
.method constructor <init>(ILcom/google/android/gtalkservice/Presence;Ljava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "presence"    # Lcom/google/android/gtalkservice/Presence;
    .param p3, "ipAddress"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1562
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionStateEvent;-><init>(I)V

    .line 1564
    if-eqz p2, :cond_0

    .line 1565
    invoke-virtual {p2}, Lcom/google/android/gtalkservice/Presence;->isAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionMadeEvent;->mPresenceIsAvailable:Z

    .line 1566
    invoke-virtual {p2}, Lcom/google/android/gtalkservice/Presence;->isInvisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionMadeEvent;->mPresenceIsInvisible:Z

    .line 1567
    invoke-virtual {p2}, Lcom/google/android/gtalkservice/Presence;->getShow()Lcom/google/android/gtalkservice/Presence$Show;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gtalkservice/Presence$Show;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionMadeEvent;->mPresenceShow:I

    .line 1573
    :goto_0
    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionMadeEvent;->mHostIpAddress:Ljava/lang/String;

    .line 1574
    return-void

    .line 1569
    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionMadeEvent;->mPresenceIsAvailable:Z

    .line 1570
    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionMadeEvent;->mPresenceIsInvisible:Z

    .line 1571
    iput v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionMadeEvent;->mPresenceShow:I

    goto :goto_0
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "out"    # Ljava/io/PrintWriter;

    .prologue
    .line 1578
    invoke-super {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionStateEvent;->dump(Ljava/io/PrintWriter;)V

    .line 1582
    iget-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionMadeEvent;->mPresenceIsAvailable:Z

    if-nez v1, :cond_1

    .line 1583
    const-string v0, "UNAVAILABLE"

    .line 1597
    .local v0, "presenceStr":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1599
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionMadeEvent;->mHostIpAddress:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", host="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionMadeEvent;->mHostIpAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1602
    :cond_0
    return-void

    .line 1584
    .end local v0    # "presenceStr":Ljava/lang/String;
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionMadeEvent;->mPresenceIsInvisible:Z

    if-eqz v1, :cond_2

    .line 1585
    const-string v0, "INVISIBLE"

    .restart local v0    # "presenceStr":Ljava/lang/String;
    goto :goto_0

    .line 1587
    .end local v0    # "presenceStr":Ljava/lang/String;
    :cond_2
    iget v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionMadeEvent;->mPresenceShow:I

    sget-object v2, Lcom/google/android/gtalkservice/Presence$Show;->NONE:Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {v2}, Lcom/google/android/gtalkservice/Presence$Show;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionMadeEvent;->mPresenceShow:I

    sget-object v2, Lcom/google/android/gtalkservice/Presence$Show;->AVAILABLE:Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {v2}, Lcom/google/android/gtalkservice/Presence$Show;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 1589
    :cond_3
    const-string v0, "AVAILABLE"

    .restart local v0    # "presenceStr":Ljava/lang/String;
    goto :goto_0

    .line 1590
    .end local v0    # "presenceStr":Ljava/lang/String;
    :cond_4
    iget v1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionMadeEvent;->mPresenceShow:I

    sget-object v2, Lcom/google/android/gtalkservice/Presence$Show;->DND:Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {v2}, Lcom/google/android/gtalkservice/Presence$Show;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 1591
    const-string v0, "DND"

    .restart local v0    # "presenceStr":Ljava/lang/String;
    goto :goto_0

    .line 1593
    .end local v0    # "presenceStr":Ljava/lang/String;
    :cond_5
    const-string v0, "AWAY"

    .restart local v0    # "presenceStr":Ljava/lang/String;
    goto :goto_0
.end method
