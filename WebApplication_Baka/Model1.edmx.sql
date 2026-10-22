
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/22/2026 10:43:37
-- Generated from EDMX file: C:\Users\opilane\source\repos\WebApplication_Baka\WebApplication_Baka\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE arvutiremont;
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_tootajaametiTootaja]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ametiTootajaSet] DROP CONSTRAINT [FK_tootajaametiTootaja];
GO
IF OBJECT_ID(N'[dbo].[FK_ametametiTootaja]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ametiTootajaSet] DROP CONSTRAINT [FK_ametametiTootaja];
GO
IF OBJECT_ID(N'[dbo].[FK_teenustehnikuteenus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tehnikuteenusSet] DROP CONSTRAINT [FK_teenustehnikuteenus];
GO
IF OBJECT_ID(N'[dbo].[FK_tehniktehnikuteenus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tehnikuteenusSet] DROP CONSTRAINT [FK_tehniktehnikuteenus];
GO
IF OBJECT_ID(N'[dbo].[FK_seadeklientiSeade]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[klientiSeadeSet] DROP CONSTRAINT [FK_seadeklientiSeade];
GO
IF OBJECT_ID(N'[dbo].[FK_kleintklientiSeade]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[klientiSeadeSet] DROP CONSTRAINT [FK_kleintklientiSeade];
GO
IF OBJECT_ID(N'[dbo].[FK_seaderemonditoo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[remonditooSet] DROP CONSTRAINT [FK_seaderemonditoo];
GO
IF OBJECT_ID(N'[dbo].[FK_remonditooremonditeenus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[remonditeenusSet] DROP CONSTRAINT [FK_remonditooremonditeenus];
GO
IF OBJECT_ID(N'[dbo].[FK_tehnikremonditeenus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[remonditeenusSet] DROP CONSTRAINT [FK_tehnikremonditeenus];
GO
IF OBJECT_ID(N'[dbo].[FK_teenusremonditeenus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[remonditeenusSet] DROP CONSTRAINT [FK_teenusremonditeenus];
GO
IF OBJECT_ID(N'[dbo].[FK_tootjaseade]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[seadeSet] DROP CONSTRAINT [FK_tootjaseade];
GO
IF OBJECT_ID(N'[dbo].[FK_tootjavaruosa]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[varuosaSet] DROP CONSTRAINT [FK_tootjavaruosa];
GO
IF OBJECT_ID(N'[dbo].[FK_remonditoovaruosatool]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[varuosatoolSet] DROP CONSTRAINT [FK_remonditoovaruosatool];
GO
IF OBJECT_ID(N'[dbo].[FK_varuosavaruosatool]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[varuosatoolSet] DROP CONSTRAINT [FK_varuosavaruosatool];
GO
IF OBJECT_ID(N'[dbo].[FK_remonditootagasiside]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tagasisideSet] DROP CONSTRAINT [FK_remonditootagasiside];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[tootajaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tootajaSet];
GO
IF OBJECT_ID(N'[dbo].[ametiTootajaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ametiTootajaSet];
GO
IF OBJECT_ID(N'[dbo].[ametSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ametSet];
GO
IF OBJECT_ID(N'[dbo].[teenusSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[teenusSet];
GO
IF OBJECT_ID(N'[dbo].[tehnikSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tehnikSet];
GO
IF OBJECT_ID(N'[dbo].[tehnikuteenusSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tehnikuteenusSet];
GO
IF OBJECT_ID(N'[dbo].[kleintSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[kleintSet];
GO
IF OBJECT_ID(N'[dbo].[seadeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[seadeSet];
GO
IF OBJECT_ID(N'[dbo].[klientiSeadeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[klientiSeadeSet];
GO
IF OBJECT_ID(N'[dbo].[remonditooSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[remonditooSet];
GO
IF OBJECT_ID(N'[dbo].[remonditeenusSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[remonditeenusSet];
GO
IF OBJECT_ID(N'[dbo].[varuosaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[varuosaSet];
GO
IF OBJECT_ID(N'[dbo].[varuosatoolSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[varuosatoolSet];
GO
IF OBJECT_ID(N'[dbo].[tootjaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tootjaSet];
GO
IF OBJECT_ID(N'[dbo].[tagasisideSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tagasisideSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'tootajaSet'
CREATE TABLE [dbo].[tootajaSet] (
    [tootajaID] int IDENTITY(1,1) NOT NULL,
    [nimiPerenimi] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ametiTootajaSet'
CREATE TABLE [dbo].[ametiTootajaSet] (
    [ametiTootajaID] int IDENTITY(1,1) NOT NULL,
    [tootaja_tootajaID] int  NOT NULL,
    [amet_ametID] int  NOT NULL
);
GO

-- Creating table 'ametSet'
CREATE TABLE [dbo].[ametSet] (
    [ametID] int IDENTITY(1,1) NOT NULL,
    [ametNimetus] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'teenusSet'
CREATE TABLE [dbo].[teenusSet] (
    [teenuseID] int IDENTITY(1,1) NOT NULL,
    [nimetus] nvarchar(max)  NOT NULL,
    [kirjeldus] nvarchar(max)  NOT NULL,
    [hind] int  NOT NULL
);
GO

-- Creating table 'tehnikSet'
CREATE TABLE [dbo].[tehnikSet] (
    [tehnikID] int IDENTITY(1,1) NOT NULL,
    [nimi] nvarchar(max)  NOT NULL,
    [kontaktadmed] nvarchar(max)  NOT NULL,
    [amet] int  NOT NULL
);
GO

-- Creating table 'tehnikuteenusSet'
CREATE TABLE [dbo].[tehnikuteenusSet] (
    [tehnikuteenusID] int IDENTITY(1,1) NOT NULL,
    [teenus_teenuseID] int  NOT NULL,
    [tehnik_tehnikID] int  NOT NULL
);
GO

-- Creating table 'kleintSet'
CREATE TABLE [dbo].[kleintSet] (
    [klientID] int IDENTITY(1,1) NOT NULL,
    [nimi] nvarchar(max)  NOT NULL,
    [tel] nvarchar(max)  NOT NULL,
    [epost] int  NOT NULL,
    [aadress] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'seadeSet'
CREATE TABLE [dbo].[seadeSet] (
    [seadeID] int IDENTITY(1,1) NOT NULL,
    [tyyp] nvarchar(max)  NOT NULL,
    [mudel] nvarchar(max)  NOT NULL,
    [seerianumber] int  NOT NULL,
    [tootja_tootjaID] int  NOT NULL
);
GO

-- Creating table 'klientiSeadeSet'
CREATE TABLE [dbo].[klientiSeadeSet] (
    [klientiSeadeID] int IDENTITY(1,1) NOT NULL,
    [seade_seadeID] int  NOT NULL,
    [kleint_klientID] int  NOT NULL
);
GO

-- Creating table 'remonditooSet'
CREATE TABLE [dbo].[remonditooSet] (
    [remonditooID] int IDENTITY(1,1) NOT NULL,
    [vastuvõtmise_kuupaev] datetime  NOT NULL,
    [kirjeldus] nvarchar(max)  NOT NULL,
    [remondistatus] int  NOT NULL,
    [ülesandmise_kuupaev] nvarchar(max)  NOT NULL,
    [seade_seadeID] int  NOT NULL
);
GO

-- Creating table 'remonditeenusSet'
CREATE TABLE [dbo].[remonditeenusSet] (
    [remonditeenusID] int IDENTITY(1,1) NOT NULL,
    [remonditoo_remonditooID] int  NOT NULL,
    [tehnik_tehnikID] int  NOT NULL,
    [teenus_teenuseID] int  NOT NULL
);
GO

-- Creating table 'varuosaSet'
CREATE TABLE [dbo].[varuosaSet] (
    [varuosaID] int IDENTITY(1,1) NOT NULL,
    [nimetus] nvarchar(max)  NOT NULL,
    [hind] int  NOT NULL,
    [laoseis] int  NOT NULL,
    [aadress] nvarchar(max)  NOT NULL,
    [tootja_tootjaID] int  NOT NULL
);
GO

-- Creating table 'varuosatoolSet'
CREATE TABLE [dbo].[varuosatoolSet] (
    [varuosatoolID] int IDENTITY(1,1) NOT NULL,
    [kogus] int  NOT NULL,
    [remonditoo_remonditooID] int  NOT NULL,
    [varuosa_varuosaID] int  NOT NULL
);
GO

-- Creating table 'tootjaSet'
CREATE TABLE [dbo].[tootjaSet] (
    [tootjaID] int IDENTITY(1,1) NOT NULL,
    [nimi] int  NOT NULL,
    [email] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'tagasisideSet'
CREATE TABLE [dbo].[tagasisideSet] (
    [tagasisideID] int IDENTITY(1,1) NOT NULL,
    [hinnaaeg] time  NOT NULL,
    [kommentaar] nvarchar(max)  NOT NULL,
    [kuupaev] datetime  NOT NULL,
    [remonditoo_remonditooID] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [tootajaID] in table 'tootajaSet'
ALTER TABLE [dbo].[tootajaSet]
ADD CONSTRAINT [PK_tootajaSet]
    PRIMARY KEY CLUSTERED ([tootajaID] ASC);
GO

-- Creating primary key on [ametiTootajaID] in table 'ametiTootajaSet'
ALTER TABLE [dbo].[ametiTootajaSet]
ADD CONSTRAINT [PK_ametiTootajaSet]
    PRIMARY KEY CLUSTERED ([ametiTootajaID] ASC);
GO

-- Creating primary key on [ametID] in table 'ametSet'
ALTER TABLE [dbo].[ametSet]
ADD CONSTRAINT [PK_ametSet]
    PRIMARY KEY CLUSTERED ([ametID] ASC);
GO

-- Creating primary key on [teenuseID] in table 'teenusSet'
ALTER TABLE [dbo].[teenusSet]
ADD CONSTRAINT [PK_teenusSet]
    PRIMARY KEY CLUSTERED ([teenuseID] ASC);
GO

-- Creating primary key on [tehnikID] in table 'tehnikSet'
ALTER TABLE [dbo].[tehnikSet]
ADD CONSTRAINT [PK_tehnikSet]
    PRIMARY KEY CLUSTERED ([tehnikID] ASC);
GO

-- Creating primary key on [tehnikuteenusID] in table 'tehnikuteenusSet'
ALTER TABLE [dbo].[tehnikuteenusSet]
ADD CONSTRAINT [PK_tehnikuteenusSet]
    PRIMARY KEY CLUSTERED ([tehnikuteenusID] ASC);
GO

-- Creating primary key on [klientID] in table 'kleintSet'
ALTER TABLE [dbo].[kleintSet]
ADD CONSTRAINT [PK_kleintSet]
    PRIMARY KEY CLUSTERED ([klientID] ASC);
GO

-- Creating primary key on [seadeID] in table 'seadeSet'
ALTER TABLE [dbo].[seadeSet]
ADD CONSTRAINT [PK_seadeSet]
    PRIMARY KEY CLUSTERED ([seadeID] ASC);
GO

-- Creating primary key on [klientiSeadeID] in table 'klientiSeadeSet'
ALTER TABLE [dbo].[klientiSeadeSet]
ADD CONSTRAINT [PK_klientiSeadeSet]
    PRIMARY KEY CLUSTERED ([klientiSeadeID] ASC);
GO

-- Creating primary key on [remonditooID] in table 'remonditooSet'
ALTER TABLE [dbo].[remonditooSet]
ADD CONSTRAINT [PK_remonditooSet]
    PRIMARY KEY CLUSTERED ([remonditooID] ASC);
GO

-- Creating primary key on [remonditeenusID] in table 'remonditeenusSet'
ALTER TABLE [dbo].[remonditeenusSet]
ADD CONSTRAINT [PK_remonditeenusSet]
    PRIMARY KEY CLUSTERED ([remonditeenusID] ASC);
GO

-- Creating primary key on [varuosaID] in table 'varuosaSet'
ALTER TABLE [dbo].[varuosaSet]
ADD CONSTRAINT [PK_varuosaSet]
    PRIMARY KEY CLUSTERED ([varuosaID] ASC);
GO

-- Creating primary key on [varuosatoolID] in table 'varuosatoolSet'
ALTER TABLE [dbo].[varuosatoolSet]
ADD CONSTRAINT [PK_varuosatoolSet]
    PRIMARY KEY CLUSTERED ([varuosatoolID] ASC);
GO

-- Creating primary key on [tootjaID] in table 'tootjaSet'
ALTER TABLE [dbo].[tootjaSet]
ADD CONSTRAINT [PK_tootjaSet]
    PRIMARY KEY CLUSTERED ([tootjaID] ASC);
GO

-- Creating primary key on [tagasisideID] in table 'tagasisideSet'
ALTER TABLE [dbo].[tagasisideSet]
ADD CONSTRAINT [PK_tagasisideSet]
    PRIMARY KEY CLUSTERED ([tagasisideID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [tootaja_tootajaID] in table 'ametiTootajaSet'
ALTER TABLE [dbo].[ametiTootajaSet]
ADD CONSTRAINT [FK_tootajaametiTootaja]
    FOREIGN KEY ([tootaja_tootajaID])
    REFERENCES [dbo].[tootajaSet]
        ([tootajaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tootajaametiTootaja'
CREATE INDEX [IX_FK_tootajaametiTootaja]
ON [dbo].[ametiTootajaSet]
    ([tootaja_tootajaID]);
GO

-- Creating foreign key on [amet_ametID] in table 'ametiTootajaSet'
ALTER TABLE [dbo].[ametiTootajaSet]
ADD CONSTRAINT [FK_ametametiTootaja]
    FOREIGN KEY ([amet_ametID])
    REFERENCES [dbo].[ametSet]
        ([ametID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ametametiTootaja'
CREATE INDEX [IX_FK_ametametiTootaja]
ON [dbo].[ametiTootajaSet]
    ([amet_ametID]);
GO

-- Creating foreign key on [teenus_teenuseID] in table 'tehnikuteenusSet'
ALTER TABLE [dbo].[tehnikuteenusSet]
ADD CONSTRAINT [FK_teenustehnikuteenus]
    FOREIGN KEY ([teenus_teenuseID])
    REFERENCES [dbo].[teenusSet]
        ([teenuseID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_teenustehnikuteenus'
CREATE INDEX [IX_FK_teenustehnikuteenus]
ON [dbo].[tehnikuteenusSet]
    ([teenus_teenuseID]);
GO

-- Creating foreign key on [tehnik_tehnikID] in table 'tehnikuteenusSet'
ALTER TABLE [dbo].[tehnikuteenusSet]
ADD CONSTRAINT [FK_tehniktehnikuteenus]
    FOREIGN KEY ([tehnik_tehnikID])
    REFERENCES [dbo].[tehnikSet]
        ([tehnikID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tehniktehnikuteenus'
CREATE INDEX [IX_FK_tehniktehnikuteenus]
ON [dbo].[tehnikuteenusSet]
    ([tehnik_tehnikID]);
GO

-- Creating foreign key on [seade_seadeID] in table 'klientiSeadeSet'
ALTER TABLE [dbo].[klientiSeadeSet]
ADD CONSTRAINT [FK_seadeklientiSeade]
    FOREIGN KEY ([seade_seadeID])
    REFERENCES [dbo].[seadeSet]
        ([seadeID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_seadeklientiSeade'
CREATE INDEX [IX_FK_seadeklientiSeade]
ON [dbo].[klientiSeadeSet]
    ([seade_seadeID]);
GO

-- Creating foreign key on [kleint_klientID] in table 'klientiSeadeSet'
ALTER TABLE [dbo].[klientiSeadeSet]
ADD CONSTRAINT [FK_kleintklientiSeade]
    FOREIGN KEY ([kleint_klientID])
    REFERENCES [dbo].[kleintSet]
        ([klientID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_kleintklientiSeade'
CREATE INDEX [IX_FK_kleintklientiSeade]
ON [dbo].[klientiSeadeSet]
    ([kleint_klientID]);
GO

-- Creating foreign key on [seade_seadeID] in table 'remonditooSet'
ALTER TABLE [dbo].[remonditooSet]
ADD CONSTRAINT [FK_seaderemonditoo]
    FOREIGN KEY ([seade_seadeID])
    REFERENCES [dbo].[seadeSet]
        ([seadeID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_seaderemonditoo'
CREATE INDEX [IX_FK_seaderemonditoo]
ON [dbo].[remonditooSet]
    ([seade_seadeID]);
GO

-- Creating foreign key on [remonditoo_remonditooID] in table 'remonditeenusSet'
ALTER TABLE [dbo].[remonditeenusSet]
ADD CONSTRAINT [FK_remonditooremonditeenus]
    FOREIGN KEY ([remonditoo_remonditooID])
    REFERENCES [dbo].[remonditooSet]
        ([remonditooID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_remonditooremonditeenus'
CREATE INDEX [IX_FK_remonditooremonditeenus]
ON [dbo].[remonditeenusSet]
    ([remonditoo_remonditooID]);
GO

-- Creating foreign key on [tehnik_tehnikID] in table 'remonditeenusSet'
ALTER TABLE [dbo].[remonditeenusSet]
ADD CONSTRAINT [FK_tehnikremonditeenus]
    FOREIGN KEY ([tehnik_tehnikID])
    REFERENCES [dbo].[tehnikSet]
        ([tehnikID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tehnikremonditeenus'
CREATE INDEX [IX_FK_tehnikremonditeenus]
ON [dbo].[remonditeenusSet]
    ([tehnik_tehnikID]);
GO

-- Creating foreign key on [teenus_teenuseID] in table 'remonditeenusSet'
ALTER TABLE [dbo].[remonditeenusSet]
ADD CONSTRAINT [FK_teenusremonditeenus]
    FOREIGN KEY ([teenus_teenuseID])
    REFERENCES [dbo].[teenusSet]
        ([teenuseID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_teenusremonditeenus'
CREATE INDEX [IX_FK_teenusremonditeenus]
ON [dbo].[remonditeenusSet]
    ([teenus_teenuseID]);
GO

-- Creating foreign key on [tootja_tootjaID] in table 'seadeSet'
ALTER TABLE [dbo].[seadeSet]
ADD CONSTRAINT [FK_tootjaseade]
    FOREIGN KEY ([tootja_tootjaID])
    REFERENCES [dbo].[tootjaSet]
        ([tootjaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tootjaseade'
CREATE INDEX [IX_FK_tootjaseade]
ON [dbo].[seadeSet]
    ([tootja_tootjaID]);
GO

-- Creating foreign key on [tootja_tootjaID] in table 'varuosaSet'
ALTER TABLE [dbo].[varuosaSet]
ADD CONSTRAINT [FK_tootjavaruosa]
    FOREIGN KEY ([tootja_tootjaID])
    REFERENCES [dbo].[tootjaSet]
        ([tootjaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tootjavaruosa'
CREATE INDEX [IX_FK_tootjavaruosa]
ON [dbo].[varuosaSet]
    ([tootja_tootjaID]);
GO

-- Creating foreign key on [remonditoo_remonditooID] in table 'varuosatoolSet'
ALTER TABLE [dbo].[varuosatoolSet]
ADD CONSTRAINT [FK_remonditoovaruosatool]
    FOREIGN KEY ([remonditoo_remonditooID])
    REFERENCES [dbo].[remonditooSet]
        ([remonditooID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_remonditoovaruosatool'
CREATE INDEX [IX_FK_remonditoovaruosatool]
ON [dbo].[varuosatoolSet]
    ([remonditoo_remonditooID]);
GO

-- Creating foreign key on [varuosa_varuosaID] in table 'varuosatoolSet'
ALTER TABLE [dbo].[varuosatoolSet]
ADD CONSTRAINT [FK_varuosavaruosatool]
    FOREIGN KEY ([varuosa_varuosaID])
    REFERENCES [dbo].[varuosaSet]
        ([varuosaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_varuosavaruosatool'
CREATE INDEX [IX_FK_varuosavaruosatool]
ON [dbo].[varuosatoolSet]
    ([varuosa_varuosaID]);
GO

-- Creating foreign key on [remonditoo_remonditooID] in table 'tagasisideSet'
ALTER TABLE [dbo].[tagasisideSet]
ADD CONSTRAINT [FK_remonditootagasiside]
    FOREIGN KEY ([remonditoo_remonditooID])
    REFERENCES [dbo].[remonditooSet]
        ([remonditooID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_remonditootagasiside'
CREATE INDEX [IX_FK_remonditootagasiside]
ON [dbo].[tagasisideSet]
    ([remonditoo_remonditooID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------