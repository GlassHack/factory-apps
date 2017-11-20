.class public Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;
.super Landroid/media/IRemoteControlDisplay$Stub;
.source "SourceFile"


# static fields
.field static final METADATA_KEY_ALBUM:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final METADATA_KEY_ARTIST:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final METADATA_KEY_ARTWORK:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final METADATA_KEY_DURATION:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final METADATA_KEY_TITLE:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private activePlayerController:Lcom/google/glass/musicplayer/ActivePlayerController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 26
    const/4 v0, 0x2

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;->METADATA_KEY_ARTIST:Ljava/lang/String;

    .line 28
    const/4 v0, 0x1

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;->METADATA_KEY_ALBUM:Ljava/lang/String;

    .line 30
    const/4 v0, 0x7

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;->METADATA_KEY_TITLE:Ljava/lang/String;

    .line 32
    const/16 v0, 0x9

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;->METADATA_KEY_DURATION:Ljava/lang/String;

    .line 34
    const/16 v0, 0x64

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;->METADATA_KEY_ARTWORK:Ljava/lang/String;

    .line 34
    return-void
.end method

.method constructor <init>(Lcom/google/glass/musicplayer/ActivePlayerController;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/media/IRemoteControlDisplay$Stub;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;->activePlayerController:Lcom/google/glass/musicplayer/ActivePlayerController;

    .line 41
    return-void
.end method


# virtual methods
.method public setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 97
    sget-object v0, Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "setAllMetadata()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;->setMetadata(ILandroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0, p1, p3}, Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;->setArtwork(ILandroid/graphics/Bitmap;)V

    .line 100
    return-void
.end method

.method public setArtwork(ILandroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 90
    sget-object v0, Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "setArtwork(), bitmap=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    if-eqz p2, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;->activePlayerController:Lcom/google/glass/musicplayer/ActivePlayerController;

    invoke-virtual {v0, p2}, Lcom/google/glass/musicplayer/ActivePlayerController;->setArtwork(Landroid/graphics/Bitmap;)V

    .line 94
    :cond_0
    return-void
.end method

.method public setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    .locals 3

    .prologue
    .line 113
    sget-object v0, Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "setCurrentClientId()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;->activePlayerController:Lcom/google/glass/musicplayer/ActivePlayerController;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/glass/musicplayer/ActivePlayerController;->setCurrentClientId(Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;ILandroid/app/PendingIntent;Z)V

    .line 116
    return-void
.end method

.method public setMetadata(ILandroid/os/Bundle;)V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 56
    sget-object v0, Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "setMetadata(), metadata=%s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p2, v2, v9

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    if-eqz p2, :cond_0

    .line 58
    sget-object v0, Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;->METADATA_KEY_ARTIST:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    sget-object v0, Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;->METADATA_KEY_ALBUM:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    sget-object v0, Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;->METADATA_KEY_TITLE:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    sget-object v0, Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;->METADATA_KEY_DURATION:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 62
    sget-object v0, Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "artistName=%s, albumName=%s, title=%s, duration=%d"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v9

    aput-object v2, v8, v6

    const/4 v9, 0x2

    aput-object v3, v8, v9

    const/4 v9, 0x3

    .line 63
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    .line 62
    invoke-interface {v0, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;->activePlayerController:Lcom/google/glass/musicplayer/ActivePlayerController;

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/musicplayer/ActivePlayerController;->setMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 66
    :cond_0
    return-void
.end method

.method public setPlaybackState(IIJ)V
    .locals 5

    .prologue
    .line 44
    sget-object v0, Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "setPlaybackState(), state=%d, stateChangeTimeMs=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;->activePlayerController:Lcom/google/glass/musicplayer/ActivePlayerController;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p2, v1, v2}, Lcom/google/glass/musicplayer/ActivePlayerController;->setPlaybackState(IJ)V

    .line 46
    return-void
.end method

.method public setPlaybackState(IIJJF)V
    .locals 5

    .prologue
    .line 50
    sget-object v0, Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "setPlaybackState(), state=%d, stateChangeTimeMs=%d, currentPositionMs=%d, speed=%f"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 51
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    .line 50
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;->activePlayerController:Lcom/google/glass/musicplayer/ActivePlayerController;

    invoke-virtual {v0, p2, p5, p6}, Lcom/google/glass/musicplayer/ActivePlayerController;->setPlaybackState(IJ)V

    .line 53
    return-void
.end method

.method public setTransportControlFlags(II)V
    .locals 5

    .prologue
    .line 76
    sget-object v0, Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "setTransportControlFlags(), flags=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;->activePlayerController:Lcom/google/glass/musicplayer/ActivePlayerController;

    invoke-virtual {v0, p2}, Lcom/google/glass/musicplayer/ActivePlayerController;->setTransportControlFlags(I)V

    .line 78
    return-void
.end method

.method public setTransportControlInfo(III)V
    .locals 5

    .prologue
    .line 81
    sget-object v0, Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "setTransportControlInfo(), flags=%d, posCapabilities=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;->activePlayerController:Lcom/google/glass/musicplayer/ActivePlayerController;

    invoke-virtual {v0, p2}, Lcom/google/glass/musicplayer/ActivePlayerController;->setTransportControlFlags(I)V

    .line 87
    return-void
.end method
