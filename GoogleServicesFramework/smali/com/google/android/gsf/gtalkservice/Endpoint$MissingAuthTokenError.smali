.class Lcom/google/android/gsf/gtalkservice/Endpoint$MissingAuthTokenError;
.super Lorg/jivesoftware/smack/packet/XMPPError;
.source "Endpoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/Endpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MissingAuthTokenError"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/Endpoint;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/Endpoint;ILjava/lang/String;)V
    .locals 0
    .param p2, "code"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 801
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$MissingAuthTokenError;->this$0:Lcom/google/android/gsf/gtalkservice/Endpoint;

    .line 802
    invoke-direct {p0, p2, p3}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(ILjava/lang/String;)V

    .line 803
    return-void
.end method
