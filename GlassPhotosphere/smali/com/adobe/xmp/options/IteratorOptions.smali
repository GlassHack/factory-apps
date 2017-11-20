.class public final Lcom/adobe/xmp/options/IteratorOptions;
.super Lcom/adobe/xmp/options/Options;
.source "IteratorOptions.java"


# static fields
.field public static final INCLUDE_ALIASES:I = 0x800

.field public static final JUST_CHILDREN:I = 0x100

.field public static final JUST_LEAFNAME:I = 0x400

.field public static final JUST_LEAFNODES:I = 0x200

.field public static final OMIT_QUALIFIERS:I = 0x1000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/adobe/xmp/options/Options;-><init>()V

    return-void
.end method


# virtual methods
.method protected defineOptionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "option"    # I

    .prologue
    .line 126
    sparse-switch p1, :sswitch_data_0

    .line 132
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 128
    :sswitch_0
    const-string v0, "JUST_CHILDREN"

    goto :goto_0

    .line 129
    :sswitch_1
    const-string v0, "JUST_LEAFNODES"

    goto :goto_0

    .line 130
    :sswitch_2
    const-string v0, "JUST_LEAFNAME"

    goto :goto_0

    .line 131
    :sswitch_3
    const-string v0, "OMIT_QUALIFIERS"

    goto :goto_0

    .line 126
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x400 -> :sswitch_2
        0x1000 -> :sswitch_3
    .end sparse-switch
.end method

.method protected getValidOptions()I
    .locals 1

    .prologue
    .line 142
    const/16 v0, 0x1700

    return v0
.end method

.method public isJustChildren()Z
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/IteratorOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isJustLeafname()Z
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/IteratorOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isJustLeafnodes()Z
    .locals 1

    .prologue
    .line 56
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/IteratorOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isOmitQualifiers()Z
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/IteratorOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public setJustChildren(Z)Lcom/adobe/xmp/options/IteratorOptions;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 77
    const/16 v0, 0x100

    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/IteratorOptions;->setOption(IZ)V

    .line 78
    return-object p0
.end method

.method public setJustLeafname(Z)Lcom/adobe/xmp/options/IteratorOptions;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 90
    const/16 v0, 0x400

    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/IteratorOptions;->setOption(IZ)V

    .line 91
    return-object p0
.end method

.method public setJustLeafnodes(Z)Lcom/adobe/xmp/options/IteratorOptions;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 103
    const/16 v0, 0x200

    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/IteratorOptions;->setOption(IZ)V

    .line 104
    return-object p0
.end method

.method public setOmitQualifiers(Z)Lcom/adobe/xmp/options/IteratorOptions;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 116
    const/16 v0, 0x1000

    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/IteratorOptions;->setOption(IZ)V

    .line 117
    return-object p0
.end method
