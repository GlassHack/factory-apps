.class public final Lcom/a/a/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Z

.field public d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/a/a/a/a/d;->a:Ljava/lang/String;

    .line 50
    iput p2, p0, Lcom/a/a/a/a/d;->b:I

    .line 51
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/a/a/a/a/d;->b:I

    packed-switch v0, :pswitch_data_0

    .line 144
    iget-object v0, p0, Lcom/a/a/a/a/d;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 137
    :pswitch_0
    iget-object v0, p0, Lcom/a/a/a/a/d;->a:Ljava/lang/String;

    goto :goto_0

    .line 140
    :pswitch_1
    iget-object v0, p0, Lcom/a/a/a/a/d;->a:Ljava/lang/String;

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
